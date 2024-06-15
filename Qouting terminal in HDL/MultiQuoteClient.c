//
//  MultiQuoteClient
//
//  Created by Brandon Wright
//  Username: psybw7
//

#define SERVER_ADDR 1818
#define DATA_BUFFER 130


#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <pthread.h>
#include <sys/socket.h>
#define kMULTIQUOTEPORT 1818

void ReadLineFromServer(int socket_client, char* buffer, int size){

    char temp_buffer[DATA_BUFFER+1];                            // Temporary data buffer for holding incoming data with read
    ssize_t n;                                                  // n which holds read outcome
    int cline = 0;                                              // boolean for carriage return (end of line)
    char *p = buffer;                                           // the address of the buffer in main, this is for writing to
    int i;
    
    
    while(!cline && n > 0){

        n = read(socket_client,temp_buffer,DATA_BUFFER);                 // read params (socket, where to store to, amount)
    
        for(i = 0; i < n; i++){

            *p = temp_buffer[i];                                         // set
            if(p != buffer && *p == 10 && *(p-1) == 13){

                //reached end of line 
                *(p-1) = 0; //Set char before character return (carriage return) to 0 (newline)
                cline = 1; // complete line (cline) is true

            }
            p++;

        }
        *p = 0;
    
    }
   

}
// Explaining ReadLineFromServer




int main(int argc, const char * argv[])
{
    const char* addr = argv[1];
    int requests = strtol(argv[2],NULL,10);
    char  buffer[DATA_BUFFER+1];                            // A place to store incoming data from the server 
    const char* another = "ANOTHER\r\n";
    int socket_client,connect_status,i;

    ssize_t n;

    socket_client = socket(AF_INET,SOCK_STREAM,IPPROTO_TCP); // Socket params (domain(ipv4,ipv6), type(How the data is specified to travel over the wire), protocol(TCP,UDP,SMTP)) <- opens socket. Works like a file handler
                                                             // Socket as a function returns an int, which is the code relating to if it was succsessful for not

    if(socket_client <= -1){                                 // A positive number, including 0 means that the socket was successful 
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in server_address;                       // struct that holds all the data relating to the server
    struct hostent* phost;                                   // another struct that holds network information
   

    memset(&server_address,0,sizeof(server_address));        // Memset params (pointer of memory, what to set to, how big each section is), this is used here to set defaults for the address struct
    server_address.sin_family = AF_INET;                     // Setting what the expected addressing family the server is
    server_address.sin_port = htons(SERVER_ADDR);            // Saying what port the server is listening in on. htons is used here because it says "we are specifying a short address thing" its probably 8 bit. The s at the end means short
    phost = gethostbyname(argv[1]);                          // Auto setup network info based on hostname
    memcpy(&server_address.sin_addr,phost->h_addr,phost->h_length); // Memcpy params (location to copy to, data to copy, size of data), we use this here to copy the address from phost to server_address

    connect_status = connect(socket_client,(struct sockaddr *)&server_address,sizeof(server_address));   // Connect params (socket(socket you created),
                                                                                                         // address(a struct that defines what protocol family we want to talk with. these structs are predefined),
                                                                                                         //  address length(this is just sizeof(<name of whatever variable is used in address>)))
                                                                                                         //  Note: type casting may be needed for the server address, this is to signify what struct it is
    if(connect_status != 0){
        
        exit(EXIT_FAILURE);

    }
    // printf("You have connected to %x!\n\n",server_address.sin_addr);

    // ReadLineFromServer(socket_client,buffer,128);
    // printf("%s\n",buffer);



    while(requests != 0){
    
        ReadLineFromServer(socket_client,buffer,128);
        printf("%s\n\n",buffer);
        write(socket_client,another,strlen(another));
        requests--;
    }
 

    // ReadLineFromServer(socket_client,buffer,128);
    // printf("%s",buffer);


    close(socket_client); // Closes socket

    // printf("\n\nConnection closed.\n");

    return 0;
}

//TODO:

// Sanity check the string data - Make sure address is three words or numbers - make sure that the request amount isnt characters but a number when it comes in

