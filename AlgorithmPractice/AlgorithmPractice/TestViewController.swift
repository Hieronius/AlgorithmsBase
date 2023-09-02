//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit
import Foundation

class TestViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Int("5")
        insertDash5(string: "454793")
    }
    
    /*
     33. Написать фукнцию которая проставит тире между нечетными числами
     
     "454793" -> "4547-9-3"
     
     func insertDash(string: String) -> String {
     }
     */
    
    func insertDash5(string: String) -> String {
        var previousNumber = Int()
        var secondNumber = Int()
        var currentIndex = 0
        var internalArray = Array(string)
        
        internalArray.map { value in
            if Int(String(value))! % 2 != 0 &&
                Int(String(internalArray[internalArray.firstIndex(of: value)! + 1]))! % 2 != 0 &&
                currentIndex < internalArray.count - 1{
                print("Yo")
                currentIndex += 1
            } else {
                print("wrong condition")
            }
        }
        
        
        return "hello"
    }
}
 

