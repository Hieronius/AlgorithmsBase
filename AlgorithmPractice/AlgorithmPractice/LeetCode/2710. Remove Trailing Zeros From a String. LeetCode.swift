//
//  2710. Remove Trailing Zeros From a String. LeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 16.09.2023.
//

import Foundation

/*
 2710. Remove Trailing Zeros From a String

 Given a positive integer num represented as a string, return the integer num without trailing zeros as a string.

  

 Example 1:

 Input: num = "51230100"
 Output: "512301"
 Explanation: Integer "51230100" has 2 trailing zeros, we remove them and return integer "512301".
 Example 2:

 Input: num = "123"
 Output: "123"
 Explanation: Integer "123" has no trailing zeros, we return integer "123".
  

 Constraints:

 1 <= num.length <= 1000
 num consists of only digits.
 num doesn't have any leading zeros.
 */

func removeTrailingZeros(_ nm: String) -> String {
    var index = nm.count - 1
    var arrayOfString = Array(nm)

    while index > 0 {
        if Array(nm)[index] == "0" {
            arrayOfString.removeLast()
            index -= 1
        } else if Array(nm)[index] != "0" {
            break
        }
    }

    return String(arrayOfString)
}
