var s_date_time = new Date();
console.log("Test JS:");
console.log('Starting: ' + s_date_time.toISOString());

var i_counter = 0;
var l_counter = 0;

for (var $i_loop1 = 0; $i_loop1 < 10; $i_loop1++) {
    console.log("i_loop1: "+ $i_loop1);
   for (var $i_loop2 = 0; $i_loop2 < 32000; $i_loop2++) {
       for (var $i_loop3 = 0; $i_loop3 < 32000; $i_loop3++) {
           i_counter++;
           l_counter++;
           if (i_counter > 50) {
               i_counter = 0;
           }
       }
   }
}
console.log("i_counter: "+ i_counter);
console.log("l_counter: "+ l_counter);
var s_date_time_end = new Date();
console.log('End: ' + s_date_time_end.toISOString() + '\n');
