var i_counter = 0
var l_counter = 0

echo("Test Nim:")

# loops here
for loop1 in countup(0, 10-1):
  echo("loop1: ", loop1)
  for loop2 in countup(0, 32000-1):
    for loop3 in countup(0, 32000-1):
      i_counter += 1
      l_counter += 1

      if i_counter > 50:
        i_counter = 0
echo()
echo("i_Counter: ", i_counter)
echo("l_Counter: ", l_counter)
