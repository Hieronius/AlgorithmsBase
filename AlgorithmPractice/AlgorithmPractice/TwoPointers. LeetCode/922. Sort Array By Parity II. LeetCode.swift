//
//  922. Sort Array By Parity II. LeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 24.10.2023.
//

import Foundation

/*
 922. Sort Array By Parity II
 
 
 Given an array of integers nums, half of the integers in nums are odd, and the other half are even.
 
 Sort the array so that whenever nums[i] is odd, i is odd, and whenever nums[i] is even, i is even.
 
 Return any answer array that satisfies this condition.
 
 
 
 Example 1:
 
 Input: nums = [4,2,5,7]
 Output: [4,5,2,7]
 Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.
 Example 2:
 
 Input: nums = [2,3]
 Output: [2,3]
 
 
 Constraints:
 
 2 <= nums.length <= 2 * 104
 nums.length is even.
 Half of the integers in nums are even.
 0 <= nums[i] <= 1000
 */

func sortArrayByParityII(_ nums: [Int]) -> [Int] {
    var evenAr = [Int]()
    var oddAr = [Int]()
    var result = [Int]()
    
    var i = 0
    
    for number in nums {
        number % 2 == 0 ? evenAr.append(number) : oddAr.append(number)
    }
    
    while i < evenAr.count {
        result.append(evenAr[i])
        result.append(oddAr[i])
        i += 1
    }
    
    return result
}

func sortArrayByParityII2(_ nums: [Int]) -> [Int] {
    var map = [Int](repeating: 0, count: nums.count)
    var i = 0, j = 1
    nums.forEach({
        if $0 % 2 == 0 {
            map[i] = $0
            i += 2
        } else {
            map[j] = $0
            j += 2
        }
    })
    return map
}
