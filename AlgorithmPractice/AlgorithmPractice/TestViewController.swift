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
     45. Написать фукнцию суммирования всех элементов массива

     ["1", 2, 3.5] -> 6.5


     func sumOfValues(array: [Any]) -> Double {
     }
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print(sumOfValues(array: ["1", 2, 3.5]))
    }
    
    func sumOfValues(array: [Any]) -> Double {
       var internalArray = [Double]()
        
        array.map { item in
            if let stringItem = item as? String {
                if let doubleValue = Double(stringItem) {
                    internalArray.append(doubleValue)
                }
            } else if let intItem = item as? Int {
                let doubleValue = Double(intItem)
                    internalArray.append(doubleValue)
            } else if let doubleItem = item as? Double {
                internalArray.append(doubleItem)
            }
        }
        return internalArray.reduce(0.0, +)
    }
    
    
}

