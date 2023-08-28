//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit
import Foundation

 

class TestViewController: UIViewController {
    
    /*
     24. Написать функцию которая возводит каждый элемент в степень по счету
     (Переиспользовать функцию (14) возведения в степень)
     
     [10, 2, 5, 1] -> [10 ^ 1, 2 ^ 2, 5 ^ 3, 1 ^ 4] -> [10, 4, 125, 4]
     
     func multiplyPower(_ array: [Int]) -> [Int] {
     }
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(numberToPower2(3, 3))
        print(multiplyPower2([10, 2, 5, 1]))
        
    }
    
    func numberToPower2(_ number: Int, _ power: Int) -> Int {
        var degree = 1
        var result = number
        
        if power > 0 {
            while degree != power {
                result *= number
                degree += 1
            }
        }
        return result
    }
    
    func multiplyPower2(_ array: [Int]) -> [Int] {
            var index = 0
            var internalArray = [Int]()
            while index != array.count {
                internalArray.append(numberToPower2(array[index], index))
                index += 1
            }
            return internalArray
        }
    
}
