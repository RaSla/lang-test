/*
* File:   main.cpp
* Author: Carles Mateo
*
* Created on August 27, 2014, 1:53 PM
*/

#include <cstdlib>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <ctime>

using namespace std;

typedef unsigned long long timestamp_t;

static timestamp_t get_timestamp()
{
    struct timeval now;
    gettimeofday (&now, NULL);
    return  now.tv_usec + (timestamp_t)now.tv_sec * 1000000;
}

int main(int argc, char** argv) {

    timestamp_t t0 = get_timestamp();

    // current date/time based on current system
    time_t now = time(0);

    // convert now to string form
    char* dt_now = ctime(&now);

    printf("Test C++:\n");
    printf("Starting at %s\n", dt_now);

    int i_loop1 = 0;
    int i_loop2 = 0;
    int i_loop3 = 0;

    int i_counter = 0;
    long l_counter = 0;

    // loops here
    for (i_loop1 = 0; i_loop1 < 10; i_loop1++) {
        printf("i_loop1: %i\n", i_loop1);
        for (i_loop2 = 0; i_loop2 < 32000; i_loop2++) {
            for (i_loop3 = 0; i_loop3 < 32000; i_loop3++) {
                i_counter++;
                l_counter++;

                if (i_counter > 50) {
                    i_counter = 0;
                }
            }
            // If you want to test how the compiler optimizes that, remove the comment
            //i_counter = 0;
         }
     }

    // This is another trick to avoid compiler's optimization. To use the var somewhere
    printf("i_counter: %i\n", i_counter);
    printf("l_counter: %li\n", l_counter);

    timestamp_t t1 = get_timestamp();
    double secs = (t1 - t0) / 1000000.0L;
    time_t now_end = time(0);

    // convert now to string form
    char* dt_now_end = ctime(&now_end);

    printf("End time: %s\n", dt_now_end);

    return 0;
}
