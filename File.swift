//
//  File.swift
//  examples
//
//  Created by Olufisayo Ayodele on 8/30/17.
//  Copyright © 2017 Olufisayo Ayodele. All rights reserved.
//

import Foundation

public class Account   //Does not inherit from anyone – standalone class
{
    private var name : String = ""
    private var balance : Double = 0
    
    public func setName(name : String)
    {
        self.name = name
    }
    
    public func getName() -> String
    {
        return name
    }
    
    public func setBalance(balance : Double)
    {
        self.balance = balance
    }
    
    public func getBalance() -> Double
    {
        return balance
    }
    
    public init(name : String, balance : Double)
    {
        //Call setters
        setName(name: name)
        setBalance(balance: balance)
    }

    public convenience init()
    {
        self.init(name: "",balance: 0)
    }
    
    
    
    public func deposit(amount : Double)
    {
        // if amount is valid, add it to the balance
        if amount > 0.0
        {
            balance = balance + amount
        }
    }

    public func withdraw(amount : Double)
    {
        if (amount > 0)
        {
            if (balance - amount > 0)
            {
                balance = balance - amount
            }
            else
            {
                print("Insufficient Funds")
            }
        }
        else
        {
            print("Invalid amount")
        }
        
    }
    
    public func description(account : String, balance: Double) -> String
    {
        //Concatenates the account name and the balance
        let str = name + "\(balance)"
        
        return str
    }


}
