#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(void)
{
        int     fd[2], nbytes;
        pid_t   childpid;
	int     waitStatus;
        int users = 95;
        char mystring[80];
        char    readbuffer[80];
        char digit1,digit2;
	
        digit1 = (char) users%10;
        digit2 = (char ) users/10;

        //printf("%d %d\n",mystring[0],mystring[1]);

        pipe(fd);

        if((childpid = fork()) == -1)
        {
                perror("fork");
                exit(1);
        }

        if(childpid == 0)
        {
		int sum = 0;
                /* Child process closes up input side of pipe */
                close(fd[1]);
                /* Read in a string from the pipe */
                nbytes = read(fd[0], readbuffer, sizeof(readbuffer));
		int i;
		for(i = 0; i<10 ; i++)
		{
			sum += readbuffer[i];	
		}
		printf("The sum is: %d\n", sum);
                exit(0);
        }
        else
        {
                /* Parent process closes up output side of pipe */
                close(fd[0]);
		
		//Data To Be Sent
		int arr[10] = {5,8,9,2,6,3,4,1,7,9};
		int j;
		for(j = 0; j<10 ; j++)
		{
			mystring[j] = arr[j];
		}
		
                /* Send "string" through the output side of pipe */
                write(fd[1], mystring, sizeof(mystring));
		waitpid(childpid,&waitStatus, 0);
		printf("Child Process Finished\n");

        }

}
