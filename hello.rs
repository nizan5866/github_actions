// This is a comment, and is ignored by the compiler.
// You can test this code by clicking the "Run" button over there ->
// or if you prefer to use your keyboard, you can use the "Ctrl + Enter"
// shortcut.

// This code is editable, feel free to hack it!
// You can always return to the original code by clicking the "Reset" button ->

// This is the main function.
/*
sup boyo
*/
fn main() {
    // Statements here are executed when the compiled binary is called.

    // Print text to the console.
    println!("Hello World!");
    println!("I'm a Rustacean!");
    let mut x = 5 + /* 90 + */ 5;
    x += 7;
    println!("Is `x` 10 or 100? x = {}", x);
    let y = true;
    let n = 4.5;
    println!("{} {} {}",x,y,n);
    println!("{}",noob());
    x = 1u8;
    println!("{}",x);
}


fn noob() -> i32 {
    return 0;
}
