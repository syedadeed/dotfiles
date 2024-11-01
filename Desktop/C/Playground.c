#include <signal.h>
#include <stdio.h>

int signal_recieved = 0;

void recieve_signal(){
    signal_recieved = 1;
}
int main(int argc, char *argv[])
{
    signal(SIGUSR1, recieve_signal);
    while (!signal_recieved) {
    
    }
    printf("Signal Recieved\n");

    return 0;
}
