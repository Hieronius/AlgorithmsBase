//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    var test = String()
    
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
    
    // MARK: Task 12 ✅ / ❗️ Can be better
    
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
    
    // MARK: Task 13 ✅ / ❗️ Can be better
    
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
    
    // MARK: TASK 14 ✅ / ❗️ Can be better
    
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
    
    // MARK: Task 15. Simple difficulty ✅ | Medium  difficulty ❓ (should ask about correct understanding)
    
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
        return array.map { ($0 % 2 != 0) ? array.remove(at: array.firstIndex(of: $0)!) : 5 }
        // return array.filter { ($0 % 2 == 0) ? array.remove(at: array.firstIndex(of: $0)!) : 5 }
    }
    
    // MARK: Task 16 ✅
    
    /*
     16. Найти сумму минимальных значений
     
     [ [ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
     -> 1 + 5 + 20 = 26
     
     func sumOfMinimums(_ array: [[Int]]) -> Int {
     }
     */
    
    func sumOfMinimums(_ array: [[Int]]) -> Int {
        array.map {($0.min()!)}.reduce(0,+)
    }
    
    // MARK: Task 17 ✅
    
    /*
     17. Функция принимает число и символ и возвращает строку
     
     6, "I"     -> "IIIIII"
     5, "Hello" -> "HelloHelloHelloHelloHello"
     
     func repeatChar(_ count: Int, string: String) -> String {
     }
     */
    
    func repeatChar(_ count: Int, string: String) -> String {
        Array(repeating: string, count: count).joined()
    }
    
    // MARK: Task 18 ✅
    
    /*
     18. Замена всех символов строки на символ (contamination)
     
     ("abc","z") → "zzz"
     ("","z") → ""
     ("_3ebzgh4","&") → "&&&&&&&&"
     
     func contamination(string: String, char: String) -> String {
     }
     */
    
    func contamination(string: String, char: String) -> String {
        String(string.map { ($0 != Character(char)) ? Character(char) : $0 })
    }
    
    // MARK: Task 19 ✅ Found solution on the stackoverflow / ❗️ Can make it better
    
    /*
     19. Удалить пустые символы из строкик
     
     "8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
     "8aaaaa dddd r     " -> "8aaaaaddddr"
     
     func removeSpaces(string: String) -> String {
     }
     */
    
    func removeSpaces(string: String) -> String {
        string.filter { !" ".contains($0) }
        
    }
    
    // MARK: Task 20 ❌ string.enumerated can be useful
    
    /*
     20. Вывести количество символов самого маленького слова в предложении
     
     "Let's travel abroad shall we" → 2
     
     func countMinWord(_ string: String) -> Int {
     }
     */
    
    func countMinWord(_ string: String) -> Int {
        25
    }
    
    // MARK: Task 21 ❌
    
    /*
     21. Возвести в квадрат число если не берется корень или взять корень числа  и вернуть массив
     
     [4,3,9,7,2,1] -> [2,9,3,49,4,1]
     
     func rootOrSquare(_ array: [Int]) -> [Int] {
     }
     */
    
    func rootOrSquare(_ array: [Int]) -> [Int] {
        var result = [Int]()
        for number in array {
            if number % number == 0 {
                result.append(Int(sqrt(Double(number / number))))
            } else {
                result.append(number * number)
            }
        }
        return result
    }
    
    // MARK: Task 22 ❌
    
    /*
     22. Есть отсортированный массив. Найти индекс числа или
     если нет числа индекс где он должен быть
     
     target = 7
     [1, 2, 3, 4, 6, 8, 9] -> 5
     [1, 2, 7, 9] -> 2
     
     func findIndex(_ array: [Int], target: Int) -> Int {
     }
     */
    
    func findIndex(_ array: [Int], target: Int) -> Int {
        var currentIndex = 0
        var result = 0
        for number in array {
            if number == target {
                
                return array.firstIndex(of:number)!
            } else {
                currentIndex += 1
            }
        }
        return 25
    }
    
    // MARK: Task 23 ✅
    
    /*
     23. Написать функцию которая умножает каждый элемент на индекс

     [1, 2, 3, 4] -> [1 * 0, 2 * 1, 3 * 2, 4 * 3] -> [0, 2, 6, 12]

     func multiplyIndex(_ array: [Int]) -> [Int] {
     }
     */
    
    func multiplyIndex(_ array: [Int]) -> [Int] {
        array.map {$0 * array.firstIndex(of: $0)!}
    }
    
    // MARK: Task 24 ✅ / ❗️ Can be better
    
    /*
     24. Написать функцию которая возводит каждый элемент в степень по счету
     (Переиспользовать функцию (14) возведения в степень)

     [10, 2, 5, 1] -> [10 ^ 1, 2 ^ 2, 5 ^ 3, 1 ^ 4] -> [10, 4, 125, 4]

     func multiplyPower(_ array: [Int]) -> [Int] {
     }
     */
    
    func multiplyPower(_ array: [Int]) -> [Int] {
        var index = 0
        var degree = 1
        var result = [Int]()
        while index != array.count {
            result.append(numberToPower(array[index], degree))
            index += 1
            degree += 1
        }
        return result
    }
    
    // MARK: Task 25 ✅ / ❗️ It's possible that understanding of the task is wrong.
    
    /*
     25. Написать функцию которая конвертирует строку в массив Character

     let string = "abcdefgh"
     let array: [Character] = Array(string) //"abc" ->  ["a","b","c"]

     let string1 = String(array) // ["a","b","c"] ->  "abc"

     "abc" -> ["a", "b", "c"]
     func convertToArray(_ string: String) -> Array<Character> {
     }
     */
    
    func convertToArray(_ string: String) -> Array<Character> {
        Array(string)
    }
    
    // MARK: 26
    
    /*
    (string.enumerated, удаление элементов)
     
    26. Удалить первый и последний элемент строки

    "place" -> "lac"

    func removeFirstLast(_ string: String?) -> String {
    }
    */
    func removeFirstlast(_ string: String?) -> String {
        var charArray = [Character]()
        
        for char in string!.enumerated() {
            charArray.append(char)
        }
        for (index, value) in string!.enumerated() {
            print("for index \(index) we use \(value)")
            string!.enumerated().for
        }
        return "hello"
    }
}
