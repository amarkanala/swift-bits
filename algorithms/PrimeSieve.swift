//
//  PrimeSieve.swift
//  Created by Amar Kanala on 5/28/15.
//  Based on http://introcs.cs.princeton.edu/java/14array/PrimeSieve.java.html
//  Usage from terminal: swift PrimeSieve.swift 100


import Foundation

class PrimeSieve {
    
    init(number: Int) {
        findNumberOfPrimesIn(number)
    }
    
    func findNumberOfPrimesIn(number: Int) {
        var isPrime = [Bool](count: number + 1, repeatedValue: true)
        for var i = 2; i*i <= number; i++ {
            if isPrime[i] {
                for var j = i; i*j <= number; j++ {
                    isPrime[i*j] = false
                }
            }
        }
        
        var primesCount = 0
        for var i = 2; i <= number; i++ {
            if isPrime[i] {
                primesCount++
            }
        }
        println("The number of primes <= \(number) is \(primesCount)")
    }
}

// terminal runner
if Process.arguments.count > 1 {
    var inputNumber = Process.arguments[1].toInt()!
    var primenumbers = PrimeSieve(number: inputNumber)
}