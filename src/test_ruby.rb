#!/usr/bin/ruby -w

time1 = Time.new
puts "Test RUBY:"
puts "Starting : " + time1.inspect

i_counter = 0;
l_counter = 0;

for i_loop1 in 0..9
    puts "i_loop1: " + i_loop1.to_s
    for i_loop2 in 0..31999
        for i_loop3 in 0..31999
            i_counter = i_counter + 1
            l_counter = l_counter + 1
            if i_counter > 50
                i_counter = 0
            end
        end
    end
end
puts "i_counter: " + i_counter.to_s
puts "l_counter: " + l_counter.to_s
time1 = Time.new

puts "End : " + time1.inspect
