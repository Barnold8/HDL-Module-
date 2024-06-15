#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct
{
	const char *name;
	const char *output;
} GATE;

const GATE gates[] = 
{
	{ "CountCharacters", "reset%B1.1.1 count%B1.1.1 char%D1.3.1 charCount%D1.5.1" },
	{ "CountLines", "reset%B1.1.1 count%B1.1.1 char%D1.3.1 lineCount%D1.5.1" },
	{ "CountWords", "reset%B1.1.1 count%B1.1.1 char%D1.3.1 wordCount%D1.5.1" },
	{ "WordCount", "reset%B1.1.1 count%B1.1.1 char%D1.3.1 charCount%D1.5.1 lineCount%D1.5.1 wordCount%D1.5.1"}
};

const int nGates = sizeof(gates) / sizeof(GATE);

void GenerateHeader(const GATE *gate, const char *out, FILE *fo);


int main(int argc, char **argv)
{
	int c;
	char *sGate = argv[1];
	char *sText = argv[2];
	char  sOut[512];
	char  sW[512+5];
	const GATE *us = NULL;
	FILE *fp = NULL;
	FILE *fo;
	int gate;

	/* argv[1] == gate 
	 * argv[2] == file
	 */
	
	if(argc != 3)
	{
		printf("Usage: WCGenTest <gate> <text file>\n");
		exit(1);
	}
	
	/* what gate are we using */
	for(gate = 0; gate < nGates; gate++)
	{
		if(0 == strcmp(gates[gate].name, sGate))
		{
			us = &gates[gate];
			break;
		}
	}
	
	if(us == NULL)
	{
		printf("Gate '%s' unknown -- aborting\n", sGate);
		exit(2);
	}
	
	/* Open file */
	fp = fopen(sText, "r");
	if(fp == NULL)
	{
		printf("Unable to open '%s' -- aborting\n", sText);
		exit(3);
	}
	
	sprintf(sOut, "%s-%s", us->name, sText);
	printf("Generating %s.tst...\n", sOut);
	sprintf(sW, "%s.tst", sOut);
	
	fo = fopen(sW, "w");
	/* generate the output */
	GenerateHeader(us, sOut,fo);

	fprintf(fo,"set reset 1,\n");
	fprintf(fo,"tick, output, tock, output;\n");


	fprintf(fo, "set reset 0,\n");
	fprintf(fo, "set count 1,\n");
	while((c = fgetc(fp)) != EOF)
	{
		fprintf(fo, "set char %d, ", c);
		fprintf(fo, "tick, output, tock, output;\n");
	}
	fclose(fp);
	
	fprintf(fo, "\n");
	fprintf(fo, "set reset 0,\n");
	fprintf(fo, "set count 0,\n");
	fprintf(fo, "tick, output, tock, output;\n\n");
	fclose(fo);
}

void GenerateHeader(const GATE *gate, const char *out, FILE *fo)
{
	fprintf(fo,"load %s.hdl,\n",gate->name);
	fprintf(fo,"output-file %s.out,\n",out);
	fprintf(fo,"//compare-to %s.cmp,\n",out);
	fprintf(fo,"output-list %s;\n\n", gate->output);

}
