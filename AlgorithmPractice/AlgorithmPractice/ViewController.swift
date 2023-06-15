//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    func binarySearch(in numbers: [Int], for value: Int) -> Int? {
        
        var left = 0
        var right = numbers.count - 1
        
        // floor() - grabs a decimal number up to lower side like floor(-10.2) = -11, or floor(5.2) = 5.0
        
        while left <= right {
            
            let middle = Int(floor(Double(left + right) / 2.0))
            
            if numbers[middle] < value {
                left = middle + 1
                print("Less than value")
                
            } else if numbers[middle] > value {
                right = middle - 1
                print("Bigger than value")
                
            } else {
                return middle
            }
        }
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(binarySearch(in: [1, 5, 10, 12, 100, 23, 24, 500, 34, 12], for: 100))
    }


}

