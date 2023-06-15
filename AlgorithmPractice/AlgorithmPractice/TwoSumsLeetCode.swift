//
//  TwoSumsLeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 07.06.2023.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = 0

        var firstIndex = 0
        var secondIndex = firstIndex + 1

        while result != target {
            result = nums[firstIndex] + nums[secondIndex]
            if result != target {
                firstIndex += 1
            } else {
                break
            }

        }
        return [nums[firstIndex], nums[secondIndex]]
    }
}
