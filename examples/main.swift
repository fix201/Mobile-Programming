//
//  main.swift
//  examples
//
//  Created by Olufisayo Ayodele on 8/28/17.
//  Copyright © 2017 Olufisayo Ayodele. All rights reserved.
//

//Learning swift from scratch

import Foundation

func setString(_ str : String)
{
    print(str)
}

func setString(str : inout String)
{
    str = str + "hello"  //What happens here – Swift won't let you modify this value
}

var str1 = "Joe "
setString(str1)
setString(str: &str1)


var number1 : Int
var number2 : Int = 3

var number3 = 3.0
number2 = Int(number3 + 3.0)

var a = "10"
number1 = Int(atoi(a))

var string1 = "hello"
var string2 = string1

var string3 = "hello"

if (string1 == string2)
{
    print("they are equal")
}

var string4 = string1 + string2
string4 = string1 + "\(number3)"

var arrayExample : [Int] //Arrays are passed by value!!!
arrayExample = [Int]()   //You cannot use [] until an element has been added
