//
//  ViewController.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 05.06.2023.
//

import UIKit
import Foundation


// MARK: while
 

class TestViewController: UIViewController {
    
    var arr = [0,1,2,3]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(noOdds2Hard( array: inout arr))
        
    }
    
    // MARK: Task 1 ✅ while
    /*
     1. Посчитать сумму позитивных чисел в массиве
     
     [1,-4,7,12] -> 1 + 7 + 12 = 20
     
     func sumOfPositives(_ array: [Int]) -> Int {
     }
     
     */
    
    func sumOfPositives2(_ array: [Int]) -> Int {
        var index = 0
        var summ = 0
        
        while index != array.count {
            if array[index] > 0 {
                summ += array[index]
            }
            index += 1
        }
        return summ
    }
    
    
    
    // MARK: Task 2 ✅ while
    
    /*
     2. Посчитать произведение элементов в массиве
     
     [1, 2, 3, 4] -> 1 * 2 * 3 * 4 = 24
     
     func multiplyOfElements(_ array: [Int]) -> Int {
     }
     */
    
    func multiplyOfElements2(_ array: [Int]) -> Int {
        var total = 1
        var index = 0
        
        while index != array.count {
            total *= array[index]
            index += 1
        }
        return total
    }
    
    
    
    // MARK: Task 3 ✅ while
    
    /*
     3. Посчитать сумму от 1 до num
     
     2 -> 3 (1 + 2)
     8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
     
     func summation(_ num: Int) -> Int {
     }
     */
    
    func summation2(_ num: Int) -> Int {
        var counter = 0
        var sum = 0
        
        while counter <= num {
            sum += counter
            counter += 1
            print(sum)
        }
        return sum
    }
    
    
    // MARK: Task 4 ✅ while
    
    /*
     4. Возвести каждый элемент массива в квадрат
     
     [1, 2, 3] -> [1, 4, 9]
     
     func doubled(_ array: Array<Int>) -> Array<Int> {
     }
     */
    func doubled2(_ array: Array<Int>) -> Array<Int> {
        var index = 0
        var internalArray = [Int]()
        while index != array.count {
            internalArray.append(array[index] * array[index])
            index += 1
        }
        return internalArray
    }
    
    
    // MARK: Task 5 ✅ while
    
    
    /*
     5. Инвертировать элементы массива
     
     [1,2,3,4,5] -> [-1,-2,-3,-4,-5]
     [1,-2,3,-4,5] -> [-1,2,-3,4,-5]
     [] -> []
     
     func invert(_ array: [Int]) -> [Int] {
     }
     */
    
    func invert2(_ array: [Int]) -> [Int] {
        var index = 0
        var internalArray = [Int]()
        
        while index != array.count {
            internalArray.append(array[index] * -1 )
            index += 1
        }
        return internalArray
    }
    
    
    // MARK: Task 6 ✅ while
    
    /*
     6. Найти минимальное число в массиве
     
     [34, 15, 88, 2] -> 2
     [34, -345, -1, 100] -> -345
     
     func findSmallest(_ array: [Int]) -> Int {
     }
     
     */
    
    func findSmallest2(_ array: [Int]) -> Int {
        var index = 0
        var startNumber = array[0]
        
        while index != array.count {
            if array[index] < startNumber {
                startNumber = array[index]
                index += 1
            } else {
                index += 1
            }
        }
        return startNumber
    }
    
    
    
    // MARK: Task 7 ✅ While
    
    /*
     7. Найти максимальное и минимальное число в массиве и вывести в кортеже
     
     [101, 5, 77, 505, 404] -> (5, 505)
     
     func minMax(_ array: [Int]) -> (Int, Int) {
     }
     */
    
    func minMax2(_ array: [Int]) -> (Int, Int) {
        var index = 0
        var startNumber = array[0]
        var minNumber = array[0]
        var maxNumber = array[0]
        
        while index != array.count {
            if array[index] < minNumber {
                minNumber = array[index]
                index += 1
            } else if array[index] > maxNumber {
                maxNumber = array[index]
                index += 1
            } else {
                index += 1
            }
        }
        return (minNumber, maxNumber)
    }
    
    
    // MARK: Task 8 ✅ while
    
    /*
     8. Сумма всех элементов по модулю
     
     [-1, 2, -3, 4, -5] → 1 + 2 + 3 + 4 + 5 → 15
     
     func sumOfAbs(_ array: [Int]) -> Int {
     }
     */
    
    func sumOfAbs2(_ array: [Int]) -> Int {
        var index = 0
        var sum = Int()
        
        while index != array.count {
            var internalNumber = Int()
            if array[index] < 0 {
                internalNumber = array[index] * -1
            } else {
                internalNumber = array[index]
            }
            sum += internalNumber
            index += 1
        }
        return sum
    }
    
    
    
    // MARK: Task 9 ✅ while
    
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
    
    func countTrues2(_ array: [Bool]) -> Int {
        var counter = 0
        var index = 0
        
        while index != array.count {
            if array[index] == true{
                counter += 1
                index += 1
            } else {
                index += 1
            }
        }
        return counter
    }
    
    
    // MARK: Task 10 ✅ while
    
    /*
     10. Посчитать сумму от n до m
     
     1, 2 -> 3 (1 + 2)
     2, 8 -> 35 (2 + 3 + 4 + 5 + 6 + 7 + 8)
     
     func summation(n: Int, m: Int) -> Int {
     }
     */
    
    func summation2(n: Int, m: Int) -> Int {
        var summ = 0
        var step = n
        
        while step <= m {
            summ += step
            step += 1
        }
        return summ
    }
    
    
    // MARK: Task 11 ✅ while
    
    /*
     11. Подсчитать среднюю оценку в массиве
     
     [1, 2, 3, 4, 5] → 3
     
     func average(_ marks: [Int]) -> Int {
     
     }
     */
    
    func average2(_ marks: [Int]) -> Int {
        var sum = 0
        var index = 0
        
        while index != marks.count {
            sum += marks[index]
            index += 1
        }
        
        return sum / marks.count
    }
    
    
    
    // MARK: Task 12 ✅
    
    /*
     12. Конвертировать число в последовательность из 1 и 0
     
     4 -> "1010".
     12 -> "101010101010"
     
     func convert(num: Int) -> String {
     }
     */
    
    func convert2(num: Int) -> String {
        var index = 1
        var result = String()
        
        while index != Array(0...num).count {
            if index % 2 == 0 {
                result.append("0")
                index += 1
            } else {
                result.append("1")
                index += 1
            }
        }
        return result
    }
    
    
    
    
    // MARK: Task 13 ✅
    
    /*
     13. Посчитать количество пололожительных чисел и сумму отрицательных и вывести в кортеже
     
     [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] → (10, -65)
     
     func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
     }
     */
    
    func countOfPositivesSumOfNegatives2(_ array: [Int]) -> (Int, Int) {
        var numberOfPositive = 0
        var numberOfNegative = 0
        var index = 0
        
        while index != array.count {
            if array[index] > 0 {
                numberOfPositive += 1
                index += 1
            } else {
                numberOfNegative += array[index]
                index += 1
            }
        }
        
        return (numberOfPositive, numberOfNegative)
    }
    
    
    // MARK: TASK 14 ✅ while
    
    /*
     14. Реализовать функцию возведения в степень
     
     (3, 2) -> 9 ( = 3 * 3 )
     (2, 3) -> 8 ( = 2 * 2 * 2 )
     (10, 6) -> 1000000
     
     func numberToPower(_ number: Int, _ power: Int) -> Int {
     }
     */
    
    func numberToPower2(_ number: Int, _ power: Int) -> Int {
        var degree = 1
        var result = number
        
        while degree != power {
            result *= number
            degree += 1
        }
        return result
    }
    
    
    
    // MARK: Task 15. Simple version ✅ while | Hard version ❌
    
    
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
    
    func noOdds2(array: [Int]) -> [Int] {
        var index = 0
        var internalArray = array
        
        while index != array.count {
            if array[index] % 2 != 0 {
                internalArray.remove(at: internalArray.firstIndex(of: array[index])!)
                index += 1
            } else {
                index += 1
            }
        }
        return internalArray
    }
    
    func noOdds2Hard(array: inout [Int]) -> [Int] {
        var index = 0
        // var internalArray = array
        
        while index != array.count {
            if array[index] % 2 != 0 {
                array.remove(at: array.firstIndex(of: array[index])!)
                index += 1
            } else {
                index += 1
            }
        }
        return array
    }
    
    
    // MARK: Task 16 ✅ while
    
    /*
     16. Найти сумму минимальных значений
     
     [ [ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
     -> 1 + 5 + 20 = 26
     
     func sumOfMinimums(_ array: [[Int]]) -> Int {
     }
     */
    
    func sumOfMinimums2(_ array: [[Int]]) -> Int {
        var minNumber = 0
        var index = 0
        var subIndex = 0
        var firstNumber = 0
        var result = Int()
        
        while index != array.count {
            minNumber = array[index][0]
            if minNumber < array[index][subIndex] {
                firstNumber = array[index][subIndex]
                subIndex += 1
            } else {
                subIndex += 1
            }
            result += minNumber
            index += 1
        }
        return result
    }
    
    
    // MARK: Task 17
    
    /*
     17. Функция принимает число и символ и возвращает строку
     
     6, "I"     -> "IIIIII"
     5, "Hello" -> "HelloHelloHelloHelloHello"
     
     func repeatChar(_ count: Int, string: String) -> String {
     }
     */
    
    
    
    
    
    // MARK: Task 18
    
    /*
     18. Замена всех символов строки на символ (contamination)
     
     ("abc","z") → "zzz"
     ("","z") → ""
     ("_3ebzgh4","&") → "&&&&&&&&"
     
     func contamination(string: String, char: String) -> String {
     }
     */
    
    
    
    
    // MARK: Task 19
    
    /*
     19. Удалить пустые символы из строкик
     
     "8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
     "8aaaaa dddd r     " -> "8aaaaaddddr"
     
     func removeSpaces(string: String) -> String {
     }
     */
    
    
    
    // MARK: Task 20
    
    /*
     20. Вывести количество символов самого маленького слова в предложении
     
     "Let's travel abroad shall we" → 2
     
     func countMinWord(_ string: String) -> Int {
     }
     */
    
    
    
    
    // MARK: Task 21
    
    /*
     21. Возвести в квадрат число если не берется корень или взять корень числа  и вернуть массив
     
     [4,3,9,7,2,1] -> [2,9,3,49,4,1]
     
     func rootOrSquare(_ array: [Int]) -> [Int] {
     }
     */
    
    
    
    
    
    // MARK: Task 22
    
    /*
     22. Есть отсортированный массив. Найти индекс числа или
     если нет числа индекс где он должен быть
     
     target = 7
     [1, 2, 3, 4, 6, 8, 9] -> 5
     [1, 2, 7, 9] -> 2
     
     func findIndex(_ array: [Int], target: Int) -> Int {
     }
     */
    
    // may be i should just add two checks for the "target" input?
    // Like the first one should compare it to value and another just should check is possibe target
    // smaller or bigger than the previous one.
    // our index should be equal to the value + 1 when target can't be bigger than the next one
    
    
    
    
    // MARK: Task 23
    
    /*
     23. Написать функцию которая умножает каждый элемент на индекс
     
     [1, 2, 3, 4] -> [1 * 0, 2 * 1, 3 * 2, 4 * 3] -> [0, 2, 6, 12]
     
     func multiplyIndex(_ array: [Int]) -> [Int] {
     }
     */
    
    
    
    
    // MARK: Task 24
    
    /*
     24. Написать функцию которая возводит каждый элемент в степень по счету
     (Переиспользовать функцию (14) возведения в степень)
     
     [10, 2, 5, 1] -> [10 ^ 1, 2 ^ 2, 5 ^ 3, 1 ^ 4] -> [10, 4, 125, 4]
     
     func multiplyPower(_ array: [Int]) -> [Int] {
     }
     */
    
    
    
    
    
    
    
    
    
    // MARK: Task 25
    
    /*
     25. Написать функцию которая конвертирует строку в массив Character
     
     let string = "abcdefgh"
     let array: [Character] = Array(string) //"abc" ->  ["a","b","c"]
     
     let string1 = String(array) // ["a","b","c"] ->  "abc"
     
     "abc" -> ["a", "b", "c"]
     func convertToArray(_ string: String) -> Array<Character> {
     }
     */
    
    
    
    
    // MARK: Task 26
    
    /*
     (string.enumerated, удаление элементов)
     
     26. Удалить первый и последний элемент строки
     
     "place" -> "lac"
     
     func removeFirstLast(_ string: String?) -> String {
     }
     */
    
    
    
    
    // MARK: Task 27
    
    /*
     27. Найти первый индекс элемента в строке
     
     "Hello", "l" ->  2
     "abcba", "a" -> 0
     "okko", "q" -> -1
     
     func secondSymbolIndex(word: String, symbol: Character) -> Int {
     }
     */
    
    
    
    
    // MARK: Task 28
    
    /*
     28. Найти второй индекс элемента в строке
     
     "Hello", "l" ->  3
     "abcba", "a" -> 4
     "okko", "q" -> -1
     
     func secondSymbolIndex(word: String, symbol: Character) -> Int {
     }
     */
    
    
    
    
    
    
    // MARK: Task 29
    
    /*
     29. Суммировать четные числа
     
     [4, 3, 1, 2, 5, 10, 6, 7, 9, 8]  -> 4 + 2 + 10 + 6 + 8 -> 30
     
     func sumEvenNumbers(array: [Int]) -> Int {
     }
     */
    
    
    
    
    // MARK: Task 30
    
    /*
     30. Посчитать разницу между максимальным и минимальным
     
     [23, 3, 19, 21, 16] -> 20 (23 - 3)
     [1, 434, 555, 34, 112] -> 554 (555 - 1)
     
     func differenceMaxMin(_ array: [Int]) -> Int {
     }
     */
    
    
    
    
    
    // MARK: Task 31
    
    /*
     31. Дана последовательность, найти сколько пропущено между минимальным и максимальным элементом массива
     (contains)
     
     [4,6,8] -> 2 (5, 6)
     [1,2,3,4,6] -> 1 (5)
     [1,2,3] -> 0 ()
     
     func consecutive(_ array: [Int]) -> Int {
     }
     */
    
    
    
    // MARK: Task 32
    
    /*
     32. Вытащить максимальные элементы из массива в заданном количестве
     
     largest(2, [7,6,5,4,3,2,1]) -> [6,7]
     
     func largest(count: Int, array: [Int]) -> [Int] {
     }
     */
    
    
    
    
    // MARK: Task 33
    
    /*
     33. Написать фукнцию которая проставит тире между нечетными числами
     
     "454793" -> "4547-9-3"
     
     func insertDash(string: String) -> String {
     }
     */
    
    
    
    
    
    // MARK: Task 34
    
    /*
     34. По какоми индексу вставить число в отсортированном массиве
     
     ([1, 2, 3, 4, 7], 5) -> 4
     ([1, 2, 3, 4, 7], 0) -> 0
     ([1, 1, 2, 2, 2], 2) -> 2
     
     func keepOrder(array: [Int], element: Int) -> Int {
     }
     */
    
    
    
    
    
    // MARK: Task 35
    
    /*
     35. Порезать строку
     
     
     trim("He", 1) -> "H..."
     
     func trim(_ string: String, _ num: Int) -> String {
     }
     */
    
    
    
    
    
    // MARK: Task 36
    
    /*
     36. Каждый элемент поделить на порядок в массиве и суммировать
     
     [3,4,6] -> ( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7
     
     
     func add(array: [Int]) -> Int {
     }
     */
    
    
    
    // MARK: Theoretical question. 4 способа создания пустого массива
    
    //    var array1: [Int] = []
    //    var array2: Array<Int> = []
    //    var array3 = [Int]()
    //    var array4 = Array<Int>()
    
    // MARK: Task 37
    
    /*
     37. Сделать маску для номера кредитной карты чтобы отображались только последние 4 цифры
     "4556364607935616" -> "************5616"
     
     func maskify(string: String) -> String {
     }
     */
    
    
    
    
    
    // MARK: Task 38
    
    /*
     38. Найти минимальный элемент в массиве и удалить его из массива
     
     func removeSmallest(_ array: [Int]) -> [Int] {
     }
     
     [1,2,3,4,5] -> [2,3,4,5]
     [5,3,2,1,4] -> [5,3,2,4]
     [2,1,2,1,2,1] -> [2,2,2]
     [0,1,0,1,0] -> [1,1]
     */
    
    
    
    
    
    // MARK: Task 39
    
    /*
     39. Один массив прибавить ко второму массиву - все способы
     
     [1, 2, 3] + [4, 5] -> [1, 2, 3, 4, 5]
     
     func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
     }
     */
    
    
    
    
    // MARK: Task 40
    
    /*
     40. Вернуть первый непоследовательный элемент и его индекс
     
     [1, 2, 3, 4, 5, 7, 8, 9] -> 7
     
     func firstNonConsequitive(array: [Int]) -> Int {
     }
     */
    
    
    
    
    // MARK: Task 41
    
    /*
     41. Проверить что массив монотонно убывающий
     
     [10, 9, 8, 7, 6, 6, 5] -> true
     [10, 9, 8, 8, 7, 9] -> false
     [10,10,10] -> true
     
     func isIncreasing(array: [Int]) -> Bool {
     }
     */
    
    
    
    
    // MARK: Task 42
    
    /*
     42. Написать функцию которая принимает массив чисел и проверяет монотонный он или нет
     
     
     [1,3,6,8] → true
     [6, 3, 2, 1] → true
     [5,5] → true
     [1, 2, 2, 5, 5, 7] → true
     [1, 2, 3, 3, 3, 1] → false
     [5, 4, 3, 2, 1, 2, 3] → false
     
     func isMonotone(_ array: [Int]) -> Int {
     }
     */
    
    
    
    // MARK: Task 43
    
    /*
     43.Маскировать кредитную карту
     
     "12345678" -> "****4678"
     "1234" -> "1234"
     "123456" -> "**3456"
     
     func masked(string: String) -> String {
     }
     
     */
    
    // MARK: Task 44
    
    /*
     44. Сконвертироват значение типа Any в тип данных Int
     
     func someToInt(_ value: Any) → Int {
     
     if let value = value as? Int {
     return value
     }
     return 0
     }
     */
    
    
    
    
    // MARK: Task 45
    
    /*
     45. Написать фукнцию суммирования всех элементов массива
     
     ["1", 2, 3.5] -> 6.5
     
     
     func sumOfValues(array: [Any]) -> Double {
     }
     */
    
}
