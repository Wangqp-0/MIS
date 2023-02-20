#include <stdio.h>
void main(void)
{
    char filename[100];
    char filepath[100];
    char file[200];
    FILE *fp;
    printf("input filename: ");scanf("%s", filename );
    printf("input filepath: ");scanf("%s", filepath );
    sprintf(file,"%s/%s", filepath,filename );
    fp=fopen(file,"w");
    if ( fp==NULL )
    {
        printf("open file:%s error\n",file );
        return ;
    }
    fputs("this is a test!",fp);
    fclose(fp);
	return;
}	