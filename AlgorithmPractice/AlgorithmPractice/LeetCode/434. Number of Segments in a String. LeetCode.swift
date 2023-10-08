//
//  434. Number of Segments in a String. LeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 08.10.2023.
//

import Foundation

/*
 434. Number of Segments in a String

 Given a string s, return the number of segments in the string.

 A segment is defined to be a contiguous sequence of non-space characters.

  

 Example 1:

 Input: s = "Hello, my name is John"
 Output: 5
 Explanation: The five segments are ["Hello,", "my", "name", "is", "John"]
 Example 2:

 Input: s = "Hello"
 Output: 1
  

 Constraints:

 0 <= s.length <= 300
 s consists of lowercase and uppercase English letters, digits, or one of the following characters "!@#$%^&*()_+-=',.:".
 The only space character in s is ' '.
 */

func countSegments(_ s: String) -> Int {
    return s.split(separator: " ").count
}
