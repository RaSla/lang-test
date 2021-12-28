<?php
echo "Test PHP: \n";
$s_date_time = date('Y-m-d H:i:s');

echo 'Starting: '.$s_date_time."\n";

$i_counter = 0;
$l_counter = 0;

for ($i_loop1 = 0; $i_loop1 < 10; $i_loop1++) {
    echo "i_loop1: $i_loop1\n";
   for ($i_loop2 = 0; $i_loop2 < 32000; $i_loop2++) {
       for ($i_loop3 = 0; $i_loop3 < 32000; $i_loop3++) {
           $i_counter++;
           $l_counter++;
           if ($i_counter > 50) {
               $i_counter = 0;
           }
       }
   }
}
echo "i_counter: $i_counter \n";
echo "l_counter: $l_counter \n";

$s_date_time_end = date('Y-m-d H:i:s');

echo 'End: '.$s_date_time_end."\n";
