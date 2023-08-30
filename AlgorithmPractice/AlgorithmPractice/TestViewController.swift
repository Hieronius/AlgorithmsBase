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
        
        print(doubled2([1,2,3,4,5]))
        print([2,3] + [1,3,2])
        
    }
    
    func doubled2(_ array: Array<Int>) -> Array<Int> {
        var internalArray: [Int] = []
        
        for element in array {
            print(internalArray + [element * element])
            print(internalArray + [1])
        }
        return internalArray
    }
    
    
}
