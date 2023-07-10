//
//  Higher order functions.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 07.07.2023.
//

import Foundation

/*
 №1
 for number in array.enumerated() {
     
 }
 
 №2
 for index in 0..<array.count {
     if array[index] > 0 {
         counter += 1
     }
 }
 
 №3
 for number in array {
 }
 
 */

/*
 
 № 4
 while
 
 */




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

//func bubbleSort(_ input: [Int]) -> [Int] {
//    guard input.count > 1 else {
//        return input
//    }
//    var result = input
//
//    let count = result.count
//
//    var isSwapped = false
//
//    repeat {
//
//        isSwapped = false
//
//        for index in 1..<count {
//            if result[index] < result[index-1] {
//                print(result)
//                result.swapAt(index-1, index)
//                isSwapped = true
//            }
//        }
//    } while isSwapped
//
//    return result
//}

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

// MARK: Task 15. Simple difficulty ✅



// MARK: | Medium  difficulty  (should ask about correct understanding) ❓

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

// MARK: Task 19 ✅ Found solution on the stackoverflow / Can make it better ❗️

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

// MARK: Task 22 ❌ Task 31 can be useful

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
    var step = 1
    
    //        for index in 0..<array.count - 1 {
    //            if array[index] + step == array[index + 1] {
    //                print("do something")
    //            } else {
    //                missedNumbers += 1
    //            }
    //        }
    
    
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

// MARK: Task 24 ✅ / Can be better ❗️

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

// MARK: Task 25 ✅ / It's possible that understanding of the task is wrong ❗️

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

// MARK: Task 26 ✅ / Can be better. Possible to understand task conditions ❗️

/*
 (string.enumerated, удаление элементов)
 
 26. Удалить первый и последний элемент строки
 
 "place" -> "lac"
 
 func removeFirstLast(_ string: String?) -> String {
 }
 */
func removeFirstlast(_ string: String?) -> String {
    var testString = string ?? ""
    testString.removeFirst()
    testString.removeLast()
    return testString
}

// MARK: Task 27 ✅ /  Can be better ❗️

/*
 27. Найти первый индекс элемента в строке
 
 "Hello", "l" ->  2
 "abcba", "a" -> 0
 "okko", "q" -> -1
 
 func secondSymbolIndex(word: String, symbol: Character) -> Int {
 }
 */
func firstSymbolIndex(word: String, symbol: Character) -> Int {
    var result = -1
    word.enumerated().map { (index, value) in
        if value == symbol {
            result = index
        }
    }
    return result
}

// MARK: Task 28 ✅ / Should be refactored ❗️

/*
 28. Найти второй индекс элемента в строке
 
 "Hello", "l" ->  3
 "abcba", "a" -> 4
 "okko", "q" -> -1
 
 func secondSymbolIndex(word: String, symbol: Character) -> Int {
 }
 */

func secondSymbolIndex(word: String, symbol: Character) -> Int {
    let defaultIndex = -1
    var repetition = false
    var hit = false
    var result = 0
    var copy = 0
    word.enumerated().map { (index, value) in
        if value == symbol && hit == false {
            result = index
            hit = true
        } else if value == symbol && hit == true {
            copy = index
            repetition = true
        }
    }
    
    if repetition && hit {
        return copy
    } else if repetition == false && hit {
        return result
    } else {
        return defaultIndex
    }
}

// MARK: Task 29 ✅

/*
 29. Суммировать четные числа
 
 [4, 3, 1, 2, 5, 10, 6, 7, 9, 8]  -> 4 + 2 + 10 + 6 + 8 -> 30
 
 func sumEvenNumbers(array: [Int]) -> Int {
 }
 */

func sumEvenNumbers(array: [Int]) -> Int {
    array.filter {$0 % 2 == 0}.reduce(0, +)
}

// MARK: Task 30 ✅

/*
 30. Посчитать разницу между максимальным и минимальным
 
 [23, 3, 19, 21, 16] -> 20 (23 - 3)
 [1, 434, 555, 34, 112] -> 554 (555 - 1)
 
 func differenceMaxMin(_ array: [Int]) -> Int {
 }
 */

func differenceMaxMin(_ array: [Int]) -> Int {
    array.max()! - array.min()!
}

// MARK: Task 31 ✅ / Can be better ❗️

/*
 31. Дана последовательность, найти сколько пропущено между минимальным и максимальным элементом массива
 (contains)
 
 [4,6,8] -> 2 (5, 6)
 [1,2,3,4,6] -> 1 (5)
 [1,2,3] -> 0 ()
 
 func consecutive(_ array: [Int]) -> Int {
 }
 */

func consecutive(_ array: [Int]) -> Int {
    let step = 1
    var missedNumbers = 0
    
    for index in 0..<array.count - 1 {
        
        if array[index] + step == array[index + 1] {
            print("correct number")
        } else {
            missedNumbers += 1
        }
    }
    return missedNumbers
}

// MARK: Task 32 ✅

/*
 32. Вытащить максимальные элементы из массива в заданном количестве
 
 largest(2, [7,6,5,4,3,2,1]) -> [6,7]
 
 func largest(count: Int, array: [Int]) -> [Int] {
 }
 */

func largest(count: Int, array: [Int]) -> [Int] {
    var test = array.sorted()
    return Array(test[test.endIndex-2...test.endIndex-1])
}

// MARK: Task 33 ❌ Let's back later

/*
 33. Написать фукнцию которая проставит тире между нечетными числами
 
 "454793" -> "4547-9-3"
 
 func insertDash(string: String) -> String {
 }
 */

func insertDash(string: String) -> String {
    var previousNumber = ""
    var nextNumber = ""
    var testString = string.enumerated()
    var currentIndex = 0
    var isPreviousOdd = false
    var isNextOdd = false
    
    // while index != string.count - 1
    
    for char in string {
        guard let number = char.wholeNumberValue else { return "" }
        if number % 2 != 0 {
            previousNumber = String(number)
            print("odd number")
        } else {
            print("even number")
        }
    }
    return ""
}

// MARK: Task 34 ✅ / Should be refactored ❗️

/*
 34. По какоми индексу вставить число в отсортированном массиве
 
 ([1, 2, 3, 4, 7], 5) -> 4
 ([1, 2, 3, 4, 7], 0) -> 0
 ([1, 1, 2, 2, 2], 2) -> 2
 
 func keepOrder(array: [Int], element: Int) -> Int {
 }
 */

func keepOrder(array: [Int], element: Int) -> Int {
    var internalArray = array
    for number in internalArray {
        if number < element {
            print("element should be placed further of the current number \(number)")
        } else {
            print("element should be placed before the current number \(number)")
            internalArray.insert(element, at: internalArray.firstIndex(of: number)! + 1)
        }
    }
    return internalArray.firstIndex(of: element)!
}

// MARK: Task 35 ✅ / Can be better ❗️

/*
 35. Порезать строку
 
 
 trim("He", 1) -> "H..."
 
 func trim(_ string: String, _ num: Int) -> String {
 }
 */

func trim(_ string: String, _ num: Int) -> String {
    var internalString = string
    var counter = 0
    
    while counter != num {
        internalString.removeLast()
        counter += 1
    }
    return internalString
}

// MARK: Task 36 ✅

/*
 36. Каждый элемент поделить на порядок в массиве и суммировать
 
 [3,4,6] -> ( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7
 
 
 func add(array: [Int]) -> Int {
 }
 */

func add(array: [Int]) -> Int {
    var total = 0
    array.enumerated().map { index, value in
        total += (value / (index + 1))
    }
    return total
}

// MARK: Theoretical question. 4 способа создания пустого массива ❌

//    var array1: [Int] = []
//    var array2: Array<Int> = []
//    var array3 = [Int]()
//    var array4 = Array<Int>()

// MARK: Task 37 ✅ / Not sure of correct understanding of the task | Can make it better ❗️

/*
 37. Сделать маску для номера кредитной карты чтобы отображались только последние 4 цифры
 "4556364607935616" -> "************5616"
 
 func maskify(string: String) -> String {
 }
 */

func maskify(string: String) -> String {
    var index = Int()
    if string.count > 4 {
        index = string.count
    } else {
        index = 0
    }
    var securedNumber = String()
    
    for number in string {
        if index != 0 {
            securedNumber.append("*")
            index -= 1
        } else {
            securedNumber.append(String(number))
        }
    }
    return securedNumber
}

// MARK: Task 38 ✅

/*
 38. Найти минимальный элемент в массиве и удалить его из массива

 func removeSmallest(_ array: [Int]) -> [Int] {
 }

 [1,2,3,4,5] -> [2,3,4,5]
 [5,3,2,1,4] -> [5,3,2,4]
 [2,1,2,1,2,1] -> [2,2,2]
 [0,1,0,1,0] -> [1,1]
 */

func removeSmallest(_ array: [Int]) -> [Int] {
    var internalArray = array
    internalArray.remove(at: internalArray.firstIndex(of: internalArray.min()!)!)
    return internalArray
}

// MARK: Task 39 ✅ / Can add more variations

/*
 39. Один массив прибавить ко второму массиву - все способы

 [1, 2, 3] + [4, 5] -> [1, 2, 3, 4, 5]

 func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
 }
 */

func sumArrays1(lhs: [Int], rhs: [Int]) -> [Int] {
    lhs + rhs
}

func sumArrays2(lhs: [Int], rhs: [Int]) -> [Int] {
    var internalArray = lhs
    internalArray.append(contentsOf: rhs)
    return internalArray
}

func sumArrays3(lhs: [Int], rhs: [Int]) -> [Int] {
    var internalArray = lhs
    
    for number in rhs {
        internalArray.append(number)
    }
    return internalArray
}

// MARK: Task 40 ✅ / Not sure solution was right ❗️

/*
40. Вернуть первый непоследовательный элемент и его индекс

[1, 2, 3, 4, 5, 7, 8, 9] -> 7

func firstNonConsequitive(array: [Int]) -> Int {
}
*/

func firstNonConsequitive(array: [Int]) -> Int {
    let step = 1
    var number = Int()
    
    for index in 0..<array.count - 1 {
        
        if array[index] + step == array[index + 1] {
            print("correct number")
        } else {
            print("found nonsequitive number - \(array[index + 1])")
            number = array[index + 1]
        }
    }
    return number
}

// MARK: Task 41 ✅ / Can do it better ❗️

/*
 41. Проверить что массив монотонно убывающий

 [10, 9, 8, 7, 6, 6, 5] -> true
 [10, 9, 8, 8, 7, 9] -> false
 [10,10,10] -> true

 func isIncreasing(array: [Int]) -> Bool {
 }
 */

func isDecreasing(array: [Int]) -> Bool {
    var delta = false
    var internalArray = array
    var currentIndex = 0
    
    while currentIndex < internalArray.count - 2  {
        
       if internalArray[currentIndex] >= internalArray[currentIndex + 1] &&
            internalArray[currentIndex + 1] >= internalArray[currentIndex + 2] {
           currentIndex += 1
           delta = true
           
       } else {
           delta = false
           break
       }
    }
     return delta
}

// MARK: Task 42 ✅ / Not tested enough | can be better ❗️

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

func isMonotone(_ array: [Int]) -> Bool {
    var delta = false
    // let internalArray = array
    var currentIndex = 0
    
    while currentIndex < array.count - 2  {
        
       if array[currentIndex] >= array[currentIndex + 1] &&
            array[currentIndex + 1] >= array[currentIndex + 2] {
           
           currentIndex += 1
           delta = true
           
       } else if array[currentIndex] <= array[currentIndex + 1] &&
                    array[currentIndex + 1] <= array[currentIndex + 2] {
           
           currentIndex += 1
           delta = true
           
       } else {
           delta = false
           break
       }
    }
     return delta
}

// MARK: Task 43 ✅ The same as 37 task

/*
43.Маскировать кредитную карту

"12345678" -> "****4678"
"1234" -> "1234"
"123456" -> "**3456"

func masked(string: String) -> String {
}
 
*/

// MARK: Task 44 ✅ Already has been solved

/*
 44. Сконвертироват значение типа Any в тип данных Int

 func someToInt(_ value: Any) → Int {

         if let value = value as? Int {
                 return value
         }
         return 0
 }
 */

func someToInt(_ value: Any) -> Int {
    
    guard let number = value as? Int else { return 0 }
    
    return number
}

// MARK: Task 45

/*
 45. Написать фукнцию суммирования всех элементов массива

 ["1", 2, 3.5] -> 6.5


 func sumOfValues(array: [Any]) -> Double {
 }
 */

//func sumOfValues(array: [Any]) -> Double {
//    var internalArray = array.map { $0 as? Double }
//    return internalArray.reduce(0) { partialResult, double in
//        partialResult += Double(double!)!
//    }
//}
