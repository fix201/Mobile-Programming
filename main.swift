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

var account = Account()  //Default initializer
var account1 = Account(name: "Joe's", balance: 1000.00)  //Parameterized Initializer
account1.setBalance(balance: 20000.00)
account1.deposit(amount: 1000)

print(account1.description(account: "Joe", balance: 1000.00))
