function go()
    global i_counter = 0
    global l_counter = 0

    println("Test JULIA:")
    for i_loop1 in 0:9
        println("i_loop1: ",i_loop1)
        for i_loop2 in 0:31999
            for i_loop3 in 0:31999
                i_counter = i_counter + 1
                l_counter = l_counter + 1
                if i_counter == 50
                    i_counter = 0
                end
            end
    end
    end
    println("i_counter: ", i_counter)
    println("l_counter: ", l_counter)
end
go()
