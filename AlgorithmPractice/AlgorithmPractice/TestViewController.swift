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
     32. Вытащить максимальные элементы из массива в заданном количестве
     
     largest(2, [7,6,5,4,3,2,1]) -> [6,7]
     
     func largest(count: Int, array: [Int]) -> [Int] {
     }
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print(largest(count: 2, array: [7,6,5,4,3,2,1]))
        print(Double(round(100 * (4.54 / 1.60) / 100)))
        print(Double(round(100 * (4.54 / 1.60))) * 5.0)
        
    }
    
    func largest(count: Int, array: [Int]) -> [Int] {
        var internalArray = array
        var arrayOfResult = [Int]()
        var maxNumber = Int()
        for attempt in 1...count {
            for number in internalArray {
                maxNumber = array[0]
                if number > maxNumber {
                    maxNumber = number
                }
            }
            arrayOfResult.append(maxNumber)
            print(arrayOfResult)
             internalArray.remove(at: array.firstIndex(of: maxNumber)!)
            print(internalArray)
            //print(internalArray[internalArray.firstIndex(of: maxNumber)!])
            print("Cycle number \(attempt) has been done")
        }
        return arrayOfResult
    }
}
