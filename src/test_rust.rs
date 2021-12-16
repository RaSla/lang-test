fn main() {
    let mut i_counter : u32 = 0;
    let mut l_counter : u64 = 0;

    println!("Test Rust: ");
    for i_loop1 in 0..10 {
        println!("loop1: {}", i_loop1);
        for _i_loop2 in 0..32000 {
            for _i_loop3 in 0..32000 {
                i_counter += 1;
                l_counter += 1;

                if i_counter > 50 {
                    i_counter = 0;
                }
            }
        }
    }
    println!("i_counter: {}", i_counter);
    println!("l_counter: {}", l_counter);
}
