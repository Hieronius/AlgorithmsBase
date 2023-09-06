//
//  isPalindromeLeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.09.2023.
//

import Foundation

/*
Given an integer x, return true if x is a
palindrome
, and false otherwise.

 

Example 1:

Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 

Constraints:

-2^31 <= x <= 2^31 - 1
 

Follow up: Could you solve it without converting the integer to a string?
*/

func isPalindrome(_ x: Int) -> Bool {
    var remainingNumber = x
    var arrayOfNumbers = [Int]()
    
    if x < 0 {
        return false
    }
    
    while remainingNumber > 0 {
        let digit = remainingNumber % 10
        arrayOfNumbers.append(digit)
        remainingNumber /= 10
    }
    let givenNumber = arrayOfNumbers.reduce(0) { result, digit in
        (result * 10) + digit
    }
    let palindromeNumber = arrayOfNumbers.reversed().reduce(0) { result, digit in
        (result * 10) + digit
    }
    return givenNumber == palindromeNumber
}
