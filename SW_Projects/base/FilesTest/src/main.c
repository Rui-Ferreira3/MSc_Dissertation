#include <stdlib.h>
#include <SD.h>

#define DELAY 10000000

void main (void){
    int i, j = 0;

    // Initialize UART
    uartInit();

    while (1) {
        printfNexys("Hello world! Iteration: %d\n", j);
        
        for (i=0; i < DELAY; i++) ;  // delay between printf's
        j++;
    }
}