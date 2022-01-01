#!/usr/bin/perl
use strict;
use warnings;

my $i_counter = 0;
my $l_counter = 0;

print("Test PERL:\n");
for (my $i_loop1 = 0; $i_loop1 <= 9; $i_loop1++)
{
    print("i_loop1: $i_loop1 \n");
    for (my $i_loop2 = 0; $i_loop2 <= 32000; $i_loop2++)
    {
        for (my $i_loop3 = 0; $i_loop3 <= 32000; $i_loop3++)
        {
            $i_counter = $i_counter + 1;
            $l_counter = $l_counter + 1;
            if ($i_counter > 50){
                $i_counter = 0;
            }
        }
    }
}
print("i_counter: $i_counter \n");
print("l_counter: $l_counter \n");
