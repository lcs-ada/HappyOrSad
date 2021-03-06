//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()


//Input
guard let input = rawInput else {
    //error
    exit(9)
}

// Print out the input provided
print("You said:")
print(input)


//Process - inspect each character
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    //Debug
    print(individualCharacter)
    
    //Categorize the character
    switch individualCharacter {
    case "😃", "😄","🙂","😊" :
        happyCount += 1
    case "🙁","☹️","😔","😕":
        sadCount += 1
    default:
        break //do nothing
    }
}



//Output
if happyCount == sadCount{
    print("unsure")
}else if happyCount > sadCount{
    print("happy")
} else if sadCount > happyCount{
    print("sad")
}else if happyCount == 0 && sadCount == 0{
    print("none")
}
