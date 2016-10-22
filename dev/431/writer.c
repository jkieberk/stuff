#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

int main ()
{	
	int fd1;
	char mystring[80];
	int arr[10] = {5,8,9,2,6,3,4,1,7,9};
        int j;
	mkfifo("ages", 0666);
        for(j = 0; j<10 ; j++)
        {
                mystring[j] = arr[j];
        }	
	fd1 = open ( "ages", O_WRONLY ); 
	write (fd1, mystring, sizeof(mystring) ); 
	close (fd1);
} 
