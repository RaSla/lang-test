int i_counter = 0;
long l_counter = 0;

Console.WriteLine("Test CS:");
Console.WriteLine("Start: " + DateTime.Now);
for (int i_loop1 = 0; i_loop1 < 10; i_loop1 = i_loop1 + 1) {
    Console.WriteLine("i_loop1: {0}", i_loop1);
    for (int i_loop2 = 0; i_loop2 < 32000; i_loop2 = i_loop2 + 1) {
        for (int i_loop3 = 0; i_loop3 < 32000; i_loop3 = i_loop3 + 1) {
            i_counter = i_counter + 1;
            l_counter = l_counter + 1;
            if (i_counter > 50) {
                i_counter = 0;
            }
        }
    }
}
Console.WriteLine("i_counter: " + i_counter);
Console.WriteLine("l_counter: " + l_counter);
Console.WriteLine("End: " + DateTime.Now);
