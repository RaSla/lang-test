i_counter = 0
l_counter = 0

print("Test LUA:")
for i_loop1 = 0,9, 1
do
    print("i_loop1:", i_loop1)
    for i_loop2 = 1,32000, 1
    do
        for i_loop3 = 1,32000, 1
        do
            i_counter = i_counter + 1
            l_counter = l_counter + 1

            if i_counter > 50 then
                i_counter = 0
            end
        end
    end
end
print("i_counter:", i_counter)
print("l_counter:", l_counter)
