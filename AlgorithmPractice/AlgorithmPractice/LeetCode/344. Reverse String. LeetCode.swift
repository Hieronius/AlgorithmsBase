//
//  344. Reverse String. LeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 17.09.2023.
//

import Foundation

/*
 344. Reverse String
 
 Write a function that reverses a string. The input string is given as an array of characters s.

 You must do this by modifying the input array in-place with O(1) extra memory.

  

 Example 1:

 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 Example 2:

 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
  

 Constraints:

 1 <= s.length <= 105
 s[i] is a printable ascii character.
*/




func reverseString(_ s: inout [Character]) {
    var inoutShit = String(s.reversed())
    s = Array(inoutShit)
}
