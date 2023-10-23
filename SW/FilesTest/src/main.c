#include <stdlib.h>

#define DELAY 10000000

extern unsigned char data[];

void main (void){
    int i, j = 0;

    // Initialize UART
    uartInit();

    while (1) {
        do {
            printfNexys("%d\n", data[j]);
            j++;
        } while (data[j] != NULL);
        j=0;
        
        for (i=0; i < DELAY; i++) ;  // delay between printf's
    }
}