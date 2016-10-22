#include <stdio.h>
#include <time.h>
#include <unistd.h>

int main()
{
    srand(time(NULL));
    int random;
    int a,b;
    int arr[10] = {1,2,3,4,5,6,7,8,9,10};
    int tmp;
    clock_t begin, end;
    double time_spent;
    
    printf("Starting Read From Cache\n");
    for( a = 0; a < 1000000 ; a++)
    {
       random = rand() % 10;

       //Reading Values
       begin = clock();
       tmp = arr[random]; 
       end = clock();

       time_spent += (double)(end - begin) / CLOCKS_PER_SEC;
    }

    printf("\nIt took Roughly %f Seconds to add 10 integers 1000000 Times\n", time_spent*10);

    for( b = 0 ; b < 1000000 ; b++)
    {   
        tmp = rand();

    }


    return 0;

}
