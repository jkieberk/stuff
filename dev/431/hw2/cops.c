#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int speed = 0;
int checkFlag = 1;
void *Cop(void *threadid)
{	
	srand(time(NULL));
	int i= 0;
	int speedLimit;
	int tickets = 0;
	while( i < 10)
	{
		if( checkFlag == 0)
		{
			speedLimit = rand() % 100;  
			if( speed > speedLimit + 9)
			{
				tickets++;
			}
			i++;
			printf("Speed Limit: %d Speed:%d\n", speedLimit, speed);
			checkFlag = 1;
		}
	}
	printf("Tickets Given: %d\n", tickets);
	pthread_exit(NULL);
}

void *Car()
{
	srand(time(NULL));
	int i = 0;
	while( i < 10 )
	{
		if(checkFlag)
		{
			speed = rand() % 100;  
			i++;
			checkFlag = 0;
		}	
	}
   pthread_exit(NULL);
}
int main (int argc, char *argv[])
{
   pthread_t threads[2];
   int rc;
   long t;
      printf("Starting Cars, Vrooooom!\n");
      rc = pthread_create(&threads[t], NULL, Car , (void *)t);
      rc = pthread_create(&threads[t], NULL, Cop , (void *)t);
      if (rc){
         printf("ERROR; return code from pthread_create() is %d\n", rc);
         exit(-1);
      }

   /* Last thing that main() should do */
   pthread_exit(NULL);
}
