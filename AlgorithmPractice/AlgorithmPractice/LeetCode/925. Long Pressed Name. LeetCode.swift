//
//  925. Long Pressed Name. LeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 10.10.2023.
//

import Foundation

/*
 925. Long Pressed Name

 Your friend is typing his name into a keyboard. Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.

 You examine the typed characters of the keyboard. Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.

  

 Example 1:

 Input: name = "alex", typed = "aaleex"
 Output: true
 Explanation: 'a' and 'e' in 'alex' were long pressed.
 Example 2:

 Input: name = "saeed", typed = "ssaaedd"
 Output: false
 Explanation: 'e' must have been pressed twice, but it was not in the typed output.
  

 Constraints:

 1 <= name.length, typed.length <= 1000
 name and typed consist of only lowercase English letters.
 */


func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var k = 0
    let name = Array(name)
    let typed = Array(typed)
    for i in 0 ..< name.count {
        if k >= typed.count || name[i] != typed[k] {
            return false
        }
        if i+1 < name.count && name[i+1] == name[i] {
            k += 1
            continue
        }
        while k < typed.count && typed[k] == name[i] {
            k += 1
        }
    }
    if k < typed.count { return false }
    return true
}
