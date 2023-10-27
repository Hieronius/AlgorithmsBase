//
//   283. Move Zeroes. LeetCode.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 27.10.2023.
//

import Foundation

/* 283. Move Zeroes

 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.

  

 Example 1:

 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Example 2:

 Input: nums = [0]
 Output: [0]
  

 Constraints:

 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  

 Follow up: Could you minimize the total number of operations done?
 */
func moveZeroes(_ nums: inout [Int]) {
    var i = 0
    var j = nums.count - 1
    
    while i < nums.count - 1 {
        while j < nums.count {
            
            if nums[i] == 0 {
                let hub = nums[j]
                nums[j] = 0
                nums[i] = hub
            }
            
            if nums[i] > nums[j] && nums[j] != 0 {
                let hub = nums[i]
                nums[i] = nums[j]
                nums[j] = hub
                print(hub)
            }
            
            j += 1
        }
        i += 1
        j = i + 1
    }
    print(nums)
}
