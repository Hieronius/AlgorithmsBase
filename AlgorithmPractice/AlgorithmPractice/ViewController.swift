//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: Task 1 ✅
    /*
     1. Посчитать сумму позитивных чисел в массиве

     [1,-4,7,12] -> 1 + 7 + 12 = 20

     func sumOfPositives(_ array: [Int]) -> Int {
     }

     reduce()
     for-in
     while
     */
    
    let array1 = [1,-4,7,12]

    
    func getSumWithForIn(array: [Int]) -> Int {
        var counter = 0
        for number in array {
            if number > 0 {
                counter += number
            }
        }
        print(counter)
        return counter
    }
    
    // MARK: Task 2 ✅
    
    /*
     2. Посчитать произведение элементов в массиве

     [1, 2, 3, 4] -> 1 * 2 * 3 * 4 = 24

     func multiplyOfElements(_ array: [Int]) -> Int {
     }
     */
    
    let array2 = [1, 2, 3, 4]
    
    func multiplyOfElements(_ array: [Int]) -> Int {
        print(array.reduce(1, *))
              return array.reduce(1, *)
    }
    
    // MARK: Task 3 ✅
    
    /*
     3. Посчитать сумму от 1 до num

     2 -> 3 (1 + 2)
     8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)

     func summation(_ num: Int) -> Int {
     }
     */
    
    func summation(_ num: Int) -> Int {
        var sum = 0
        var counter = 0
        while counter <= num {
            sum += counter
            counter += 1
            
        }
        print(sum)
        return counter
    }
    
    // MARK: Task 4 ✅
    
    /*
     4. Возвести каждый элемент массива в квадрат

     [1, 2, 3] -> [1, 4, 9]

     func doubled(_ array: Array<Int>) -> Array<Int> {
     }
     */
    
    func doubled(_ array: Array<Int>) -> Array<Int> {
        var result = [Int]()
        result = array.map {$0 * $0}
        print(result)
        return result
    }
    
    // MARK: Task 5
    
    /*
     5. Инвертировать элементы массива

     [1,2,3,4,5] -> [-1,-2,-3,-4,-5]
     [1,-2,3,-4,5] -> [-1,2,-3,4,-5]
     [] -> []

     func invert(_ array: [Int]) -> [Int] {
     }
     */
    
    func invert(_ array: [Int]) -> [Int] {
        
    }
}

