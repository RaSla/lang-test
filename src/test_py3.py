from datetime import datetime
import time

print("Starting at: " + str(datetime.now()))
s_unixtime_start = str(time.time())

i_counter = 0
l_counter = 0

# From 0 to 31999
for i_loop1 in range(0, 10):
    print("i_loop1: " + str(i_loop1))
    for i_loop2 in range(0, 32000):
        for i_loop3 in range(0, 32000):
            i_counter += 1
            l_counter += 1
            if (i_counter > 50):
                i_counter = 0

print("i_counter: " + str(i_counter))
print("l_counter: " + str(l_counter))

print("Ending at: " + str(datetime.now()))
