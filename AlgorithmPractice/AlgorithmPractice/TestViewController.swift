//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit
import Foundation

 

class TestViewController: UIViewController {
    
    var array = [10, 9, 8, 7, 6, 6, 5]
    var result: [()] = []
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(isIncreasing4(array: array))
        
    }
    
    /*
     41. Проверить что массив монотонно убывающий
     
     [10, 9, 8, 7, 6, 6, 5] -> true
     [10, 9, 8, 8, 7, 9] -> false
     [10,10,10] -> true
     
     func isIncreasing(array: [Int]) -> Bool {
     }
     */
    
    func isIncreasing4(array: [Int]) -> Bool {
        var result = Bool()
        self.array.map { element in {
            if self.array.firstIndex(of: element)! < self.array.count - 1 {
                if element >= self.array[self.array.firstIndex(of: element)! + 1] {
                    print(element)
                    print("Yes")
                    result = true
                } else {
                    print("No")
                    return false
                }
            } else {
                print("failure)")
            }
            return result
        }
        }
        return result
        
    }
}
