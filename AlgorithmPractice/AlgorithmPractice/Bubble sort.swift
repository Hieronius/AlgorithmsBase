//
//  Bubble sort.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 28.06.2023.
//

import Foundation

// Input - array of numbers to sort. Output - result number.
func bubbleSort(_ input: [Int]) -> [Int] {
    // If there is more than one element in input do the job.
    // else stop running the function.
    guard input.count > 1 else {
        return input
    }
    // our array of elements.
    var result = input
    // amout of the elements in the array.
    let count = result.count
    
    var isSwapped = false
    
    repeat {
        
        isSwapped = false
        
        for index in 1..<count {
            if result[index] < result[index-1] {
                print(result)
                result.swapAt(index-1, index)
                isSwapped = true
            }
        }
    } while isSwapped
                
    return result
}















/**
 - Note:
 1. Set a function "BubleSort" with `input` as `[Int]` array and `output` as  `Int`
 ```
 func bubleSort(input: [Int] -> Int {
 ```
 2. Set a verification that there is more than one element of the `input` array
 ```
 guard input.count > 1 else { return }
 ```
 3. Create inout variable inside the code to work with input
 ```
 var result = input
 ```
 4. Create an internal counter of how much elements is there inside the input array
 ```
 var count = result.count
 ```
 5. Create an abstraction of the fact of elements in the array being swapped
 It's mean we wan't sort from lowest to the highest so we should compare and swap these elements step by step
 ```
 var isSwapped = false
 ```
 6. We should create a system, an algorithm so we need something like cycle
 Let's use repeat while and put our functionality inside it.
 */














