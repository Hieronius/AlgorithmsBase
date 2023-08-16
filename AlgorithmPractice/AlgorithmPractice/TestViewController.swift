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
        print(insertDash3(string: "454793"))
    }
    
    /*
     33. Написать фукнцию которая проставит тире между нечетными числами
     
     "454793" -> "4547-9-3"
     
     func insertDash(string: String) -> String {
     }
     */

    func insertDash3(string: String) -> String {
        
        var internalString = String()
        var internalArray = Array(string)
        print(type(of:internalArray))
        
        for char in internalArray {
            if internalArray.firstIndex(of: char)! < internalArray.count - 1 {
                var previousNumber = Int(String(char))!
                var secondNumber = Int(String(internalArray[internalArray.firstIndex(of: char)! + 1]))!
                print(previousNumber)
                print(secondNumber)
                if previousNumber % 2 != 0 &&
                    secondNumber % 2 != 0 {
                    print("previous and next numbers are odd")
                    internalString.append(String(previousNumber))
                    internalString.append("-")
                    internalString.append(String(secondNumber))
                } else {
                    print("previous and next number are even")
                    internalString.append(String(previousNumber))
                }
//                internalString.append(char)
            }
        }
        
        
//        internalArray.map { character in
//            if let number = character as? Character {
//                if let intNumber = Int(character) {
//                    if intNumber % 2 == 0 {
//                        print("even number")
//                        internalString += String(number)
//                    }
//                } else {
//                    print("odd number")
//                    internalString += String(number)
//                    internalString += "-"
//                }
//            }
//        }
        return internalString
    }

}

