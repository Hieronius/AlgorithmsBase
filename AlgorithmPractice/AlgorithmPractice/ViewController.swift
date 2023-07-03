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
        print(noOdds(array: &noOddsArray))
        print(noOddsArray)
        // noOddsArray
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
        array.reduce(1, *)
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
        array.map {$0 * $0}
    }
    
    // MARK: Task 5 ✅
    
    /*
     5. Инвертировать элементы массива
     
     [1,2,3,4,5] -> [-1,-2,-3,-4,-5]
     [1,-2,3,-4,5] -> [-1,2,-3,4,-5]
     [] -> []
     
     func invert(_ array: [Int]) -> [Int] {
     }
     */
    
    func invert(_ array: [Int]) -> [Int] {
        array.map { $0 * -1}
    }
    
    // MARK: Task 6 ✅
    
    /*
     6. Найти минимальное число в массиве
     
     [34, 15, 88, 2] -> 2
     [34, -345, -1, 100] -> -345
     
     func findSmallest(_ array: [Int]) -> Int {
     }
     
     */
    
    func bubbleSort(_ input: [Int]) -> [Int] {
        guard input.count > 1 else {
            return input
        }
        var result = input
        
        let count = result.count
        
        var isSwapped = false
        
        repeat {
            
            isSwapped = false
            
            for index in 1..<count {
                if result[index] < result[index-1] {
                    print(result)
                    result.swapAt(index-1, index)
                    isSwapped = true
                }
            }
        } while isSwapped
        
        return result
    }
    
    func findSmallest(_ array: [Int]) -> Int {
        bubbleSort(array).first ?? 1
    }
    
    // MARK: Task 7 ✅
    
    /*
     7. Найти максимальное и минимальное число в массиве и вывести в кортеже
     
     [101, 5, 77, 505, 404] -> (5, 505)
     
     func minMax(_ array: [Int]) -> (Int, Int) {
     }
     */
    
    func minMax(_ array: [Int]) -> (Int, Int) {
        (bubbleSort(array).first ?? 1, bubbleSort(array).last ?? 1)
    }
    
    // MARK: Task 8 ✅
    
    /*
     8. Сумма всех элементов по модулю
     
     [-1, 2, -3, 4, -5] → 1 + 2 + 3 + 4 + 5 → 15
     
     func sumOfAbs(_ array: [Int]) -> Int {
     }
     */
    
    func sumOfAbs(_ array: [Int]) -> Int {
        var result = 0
        for number in array {
            if number > 0 {
                result += number
            } else {
                result += -(number)
            }
        }
        return result
    }
    
    // MARK: Task 9 ✅
    
    /*
     9. Подсчитать количество true в массиве
     
     [true,  true,  true,  false,
     true,  true,  true,  true ,
     true,  false, true,  false,
     true,  false, false, true ,
     true,  true,  true,  true ,
     false, false, true,  true] -> 17
     
     func countTrues(_ array: [Bool]) -> Int {
     }
     */
    
    func countTrues(_ array: [Bool]) -> Int {
        array.filter {$0 == true}.count
    }
    
    // MARK: Task 10 ✅
    
    /*
     10. Посчитать сумму от n до m
     
     1, 2 -> 3 (1 + 2)
     2, 8 -> 35 (2 + 3 + 4 + 5 + 6 + 7 + 8)
     
     func summation(n: Int, m: Int) -> Int {
     }
     */
    
    func summation(n: Int, m: Int) -> Int {
        Array(n...m).reduce(0, +)
    }
    
    // MARK: Task 11 ✅
    
    /*
     11. Подсчитать среднюю оценку в массиве
     
     [1, 2, 3, 4, 5] → 3
     
     func average(_ marks: [Int]) -> Int {
     
     }
     */
    
    func average(_ marks: [Int]) -> Int {
        marks.reduce(0,+) / marks.count
    }
    
    // MARK: Task 12 ✅ / ❗️ Can be better.
    
    /*
     12. Конвертировать число в последовательность из 1 и 0
     
     4 -> "1010".
     12 -> "101010101010"
     
     func convert(num: Int) -> String {
     }
     */
    
    func convert(num: Int) -> String {
        var result = String()
        for number in Array(1...num) {
            number % 2 == 0 ? result.append("0") : result.append("1")
        }
        // return (Array(1...num)).map {($0 % 2 == 0) ? result.append("0") : result.append("1") }
        return result
    }

    // MARK: Task 13 ✅
    
    /*
    13. Посчитать количество пололожительных чисел и сумму отрицательных и вывести в кортеже

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] → (10, -65)

    func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
    }
    */
    
    func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
        var counterOfPositiveNumbers = 0
        var sumOfNegativeNumbers = [Int]()
        array.map { ($0 > 0) ? (counterOfPositiveNumbers += 1) : (sumOfNegativeNumbers.append($0)) }
        return (counterOfPositiveNumbers, sumOfNegativeNumbers.reduce(0, +))
    }
    
    // MARK: TASK 14 ✅
    
    /*
    14. Реализовать функцию возведения в степень

    (3, 2) -> 9 ( = 3 * 3 )
    (2, 3) -> 8 ( = 2 * 2 * 2 )
    (10, 6) -> 1000000

    func numberToPower(_ number: Int, _ power: Int) -> Int {
    }
    */
    
    func numberToPower(_ number: Int, _ power: Int) -> Int {
        var index = 1
        var result = number
        while index != power {
            result *= number
            index += 1
        }
        return result
    }
    
    // MARK: Task 15. Simple difficulty ✅ | Medium  difficulty ✅ (should ask about correct understanding)
    
    /*
     15. Почистить массив от нечетных чисел

     [0,1] → [0]
     [0,1,2,3] → [0,2]

     func noOdds(array: [Int]) -> [Int] {
     }

     (Усложненный вариант - удаление элементов из массива)
     func noOdds(array: inout [Int]) -> [Int] {
     }
     */
    
    func noOdds(array: [Int]) -> [Int] {
        array.filter {$0 % 2 == 0}
    }
    
    var noOddsArray = [0, 1, 2, 3]
    func noOdds(array: inout [Int]) -> [Int] {
        // return array.map { ($0 % 2 != 0) ? array.remove(at: array.firstIndex(of: $0)!) : 5 }
        return array.filter { ($0 % 2 == 0) ? array.remove(at: array.firstIndex(of: $0)!) : 5 }
        
    }
    
}

