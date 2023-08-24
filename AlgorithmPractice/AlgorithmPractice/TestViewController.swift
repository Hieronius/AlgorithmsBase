//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit
import Foundation

 

class TestViewController: UIViewController {
    
    var testArray = [1,3,6,8]
    var testArray1 = [6, 3, 2, 1]
    var testArray2 = [1, 2, 3, 3, 3, 1]
    var testArray3 = [5, 4, 3, 2, 1, 2, 3]
    
    // test arrays for isIncreasing()
//    [10, 9, 8, 7, 6, 6, 5] -> true
//    [10, 9, 8, 8, 7, 9] -> false
//    [10,10,10] -> true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Check isInreacting3 again. Seems like it's not working properly.
        
         print(isIncreasing3(array: [10,10,10]))
    }
    
    func isIncreasing3(array: [Int]) -> Bool {
            array.dropLast().reduce(true) { (partialResult, element) in
            if let nextIndex = array.firstIndex(of: element)?.advanced(by: 1) {
                return partialResult && element >= array[nextIndex]
            } else {
                print("failure")
                return false
            }
        }
    }


    
    /*
     42. Написать функцию которая принимает массив чисел и проверяет монотонный он или нет


     [1,3,6,8] → true
     [6, 3, 2, 1] → true
     [5,5] → true
     [1, 2, 2, 5, 5, 7] → true
     [1, 2, 3, 3, 3, 1] → false
     [5, 4, 3, 2, 1, 2, 3] → false

     func isMonotone(_ array: [Int]) -> Int {
     }
     */
    
    func isMonotone3(_ array: [Int]) -> Bool {
        array.map { element in
            if let nextIndex = array.firstIndex(of: element)?.advanced(by: 1), nextIndex < array.count - 1 {
                return element >= array[nextIndex]
            } else {
                print("failure")
                return false
            }
        }.allSatisfy {$0}
    }
}
