#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main ()
{
	int fd1;
	char buf [80];
	int sum = 0;

	fd1 = open ("ages", O_RDONLY ); 
	read ( fd1, buf,80 ); 
	int i;
        for(i = 0; i<10 ; i++)
        {
                sum += buf[i];
        }
        printf("The sum is: %d\n", sum);
	close (fd1);
	system("rm ages");
	return 0;
} 
