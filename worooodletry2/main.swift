#if !os(macOS)
import UIKit
#endif
typealias myType = String

var greeting = "Welcome to some WordJunk, here is a random puzzle:"
var interface: [[String]] = [["*", "*", "*", "*", "*",],["*", "*", "*", "*", "*",],["*", "*", "*", "*", "*",],["*", "*", "*", "*", "*",],["*", "*", "*", "*", "*",] ]
var instructions = "Please enter a five-letter word:"

func inputValid() -> Int {
    let input = readLine()
    let guess : myType = input ?? " "

    // if len > || < 5, remind of instructions
    let len = guess.count

    if len > 5 || len < 5{
        return 0
    }
    return 1
}
//print out to console
print(greeting)
for i in 0...4 {
    for j in 0...4 {
        print(interface[i][j],terminator: "")
    }
    print("\n")
}
print(instructions)
var valid : Int = 0
while valid != 1{
    valid = inputValid()
    if valid != 1{
        print(instructions)}
}

// if len == 5, guess
//hehe


