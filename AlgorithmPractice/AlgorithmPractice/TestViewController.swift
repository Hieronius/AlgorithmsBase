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
        
        
        print(findIndex3([1, 2, 3, 4, 6, 8, 9], target: 7))
        // print(findIndex3([1, 2, 7, 9], target: 7))
    }
}
