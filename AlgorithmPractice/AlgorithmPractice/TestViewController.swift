//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit
import Foundation

 

class TestViewController: UIViewController {
    
    // MARK: Task 26 ❌

    /*
     (string.enumerated, удаление элементов)
     
     26. Удалить первый и последний элемент строки
     
     "place" -> "lac"
     
     func removeFirstLast(_ string: String?) -> String {
     }
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(removeFirstLast("Hello"))
        
    }
    
    func removeFirstLast(_ string: String?) -> String {
        var internalString = Array(string!)
        var index = 0
        
        while index != internalString.count {
            if index == internalString.count - 1 {
                print("1")
                internalString.remove(at: index)
                internalString.remove(at: 0)
                break
            } else {
                index += 1
                print("2")
            }
        }
        return String(internalString)
        
    }
    
}
