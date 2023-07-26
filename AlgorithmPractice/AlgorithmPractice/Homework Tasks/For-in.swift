//
//  For-in.swift
//  AlgorithmPractice
//
//  Created by Арсентий Халимовский on 07.07.2023.
//

import Foundation

// MARK: Task 1 ✅ for-in
/*
 1. Посчитать сумму позитивных чисел в массиве
 
 [1,-4,7,12] -> 1 + 7 + 12 = 20
 
 func sumOfPositives(_ array: [Int]) -> Int {
 }
 
 */

func sumOfPositives1(_ array: [Int]) -> Int {
    var sum = 0
    for number in array {
        if number > 0 {
            sum += number
        }
    }
    return sum
}


// MARK: Task 2 ✅ for-in

/*
 2. Посчитать произведение элементов в массиве
 
 [1, 2, 3, 4] -> 1 * 2 * 3 * 4 = 24
 
 func multiplyOfElements(_ array: [Int]) -> Int {
 }
 */

func multiplyOfElements1(_ array: [Int]) -> Int {
    var result = 1
    for number in array {
        result *= number
    }
    return result
}


// MARK: Task 3 ✅ for-in

/*
 3. Посчитать сумму от 1 до num
 
 2 -> 3 (1 + 2)
 8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
 
 func summation(_ num: Int) -> Int {
 }
 */

func summation1(_ num: Int) -> Int {
    var sum = 0
    for number in 1...num {
        sum += number
    }
    return sum
}


// MARK: Task 4 ✅ for-in

/*
 4. Возвести каждый элемент массива в квадрат
 
 [1, 2, 3] -> [1, 4, 9]
 
 func doubled(_ array: Array<Int>) -> Array<Int> {
 }
 */

func doubled1(_ array: Array<Int>) -> Array<Int> {
    var internalArray = [Int]()
    
    for element in array {
        internalArray.append(element * element)
    }
    return internalArray
}

// MARK: Task 5 ✅ for-in


/*
 5. Инвертировать элементы массива
 
 [1,2,3,4,5] -> [-1,-2,-3,-4,-5]
 [1,-2,3,-4,5] -> [-1,2,-3,4,-5]
 [] -> []
 
 func invert(_ array: [Int]) -> [Int] {
 }
 */
func invert1(_ array: [Int]) -> [Int] {
    var internalArray = [Int]()
    for element in array {
        internalArray.append(element * -1)
    }
    return internalArray
}


// MARK: Task 6 ✅ for-in

/*
 6. Найти минимальное число в массиве
 
 [34, 15, 88, 2] -> 2
 [34, -345, -1, 100] -> -345
 
 func findSmallest(_ array: [Int]) -> Int {
 }
 
 */

func findSmallest1(_ array: [Int]) -> Int {
    var number = array[0]
    
    for element in array {
        if element < number {
            number = element
        }
    }
    return number
}

// MARK: Task 7 ✅ for-in

/*
 7. Найти максимальное и минимальное число в массиве и вывести в кортеже
 
 [101, 5, 77, 505, 404] -> (5, 505)
 
 func minMax(_ array: [Int]) -> (Int, Int) {
 }
 */

func minMax1(_ array: [Int]) -> (Int, Int) {
    var min = array[0]
    var max = array[0]
    
    for element in array {
        if element < min {
            min = element
        } else if element > max {
            max = element
        }
    }
    return (min, max)
}


// MARK: Task 8 ✅ for-in

/*
 8. Сумма всех элементов по модулю
 
 [-1, 2, -3, 4, -5] → 1 + 2 + 3 + 4 + 5 → 15
 
 func sumOfAbs(_ array: [Int]) -> Int {
 }
 */

func sumOfAbs1(_ array: [Int]) -> Int {
    var sum = 0
    
    for number in array {
        if number > 0 {
            sum += number
        } else if number < 0 {
            sum += -number
        }
    }
    return sum
}


// MARK: Task 9 ✅ for-in

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

func countTrues1(_ array: [Bool]) -> Int {
    var result = 0
    
    for element in array {
        if element {
            result += 1
        }
    }
    return result
}


// MARK: Task 10 ✅ for-in

/*
 10. Посчитать сумму от n до m
 
 1, 2 -> 3 (1 + 2)
 2, 8 -> 35 (2 + 3 + 4 + 5 + 6 + 7 + 8)
 
 func summation(n: Int, m: Int) -> Int {
 }
 */

func summation1(n: Int, m: Int) -> Int {
    var sum = 0
    for number in n...m {
        sum += number
    }
    return sum
}


// MARK: Task 11 Here ✅ for-in

/*
 11. Подсчитать среднюю оценку в массиве
 
 [1, 2, 3, 4, 5] → 3
 
 func average(_ marks: [Int]) -> Int {
 
 }
 */

func average1(_ marks: [Int]) -> Int {
    var sum = 0
    
    for number in marks {
        sum += number
    }
    return sum / marks.count
}


// MARK: Task 12 ✅ for-in

/*
 12. Конвертировать число в последовательность из 1 и 0
 
 4 -> "1010".
 12 -> "101010101010"
 
 func convert(num: Int) -> String {
 }
 */

func convert1(num: Int) -> String {
    var result = ""
    for number in 1...num {
        if number % 2 != 0 {
            result.append("1")
        } else {
            result.append("0")
        }
    }
    return result
}



// MARK: Task 13 ✅ for-in

/*
 13. Посчитать количество пололожительных чисел и сумму отрицательных и вывести в кортеже
 
 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] → (10, -65)
 
 func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
 }
 */

func countOfPositivesSumOfNegatives1(_ array: [Int]) -> (Int, Int) {
    var sumOfPositives = 0
    var sumOfNegatives = 0
    
    for number in array {
        if number > 0 {
            sumOfPositives += 1
        } else {
            sumOfNegatives += number
        }
    }
    return (sumOfPositives, sumOfNegatives)
}


// MARK: TASK 14 ✅ for-in

/*
 14. Реализовать функцию возведения в степень
 
 (3, 2) -> 9 ( = 3 * 3 )
 (2, 3) -> 8 ( = 2 * 2 * 2 )
 (10, 6) -> 1000000
 
 func numberToPower(_ number: Int, _ power: Int) -> Int {
 }
 */

func numberToPower1(_ number: Int, _ power: Int) -> Int {
    var result = number
    var counter = power
    
    for degree in (1..<power+1) {
        result *= number
        counter -= 1
        if counter == 0 {
            break
        }
    }
    return result
    
//        var index = 1
//        var result = number
//        while index != power {
//            result *= number
//            index += 1
//        }
//        return result
}


// MARK: Task 15. Simple difficulty ✅ for-in | Hard difficulty ✅ for-in


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

func noOdds1(array: [Int]) -> [Int] {
    var internalArray = array
    for number in array {
        if number % 2 != 0 {
            internalArray.remove(at: internalArray.firstIndex(of: number)!)
        }
    }
    return internalArray
}

func noOdds(array: inout [Int]) -> [Int] {
    for number in array {
        if number % 2 != 0 {
            array.remove(at: array.firstIndex(of: number)!)
        }
    }
    return array
}

// MARK: Task 16 ✅ for-in

/*
 16. Найти сумму минимальных значений
 
 [ [ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
 -> 1 + 5 + 20 = 26
 
 func sumOfMinimums(_ array: [[Int]]) -> Int {
 }
 */

func sumOfMinimums1(array: [[Int]]) -> Int {
    var result = 0
    var smallestNumber = 0
    
    for subArray in array {
        for number in subArray {
            var smallest = subArray[0]
            
            if number < smallest {
                smallest = number
            }
            smallestNumber = smallest
        }
        result += smallestNumber
    }
    return result
}


// MARK: Task 17 ✅ for-in

/*
 17. Функция принимает число и символ и возвращает строку
 
 6, "I"     -> "IIIIII"
 5, "Hello" -> "HelloHelloHelloHelloHello"
 
 func repeatChar(_ count: Int, string: String) -> String {
 }
 */

func repeatChar1(_ count: Int, string: String) -> String {
    var result = String()
    for attempt in 1...count {
        result.append(string)
    }
    return result
}



// MARK: Task 18 ✅ for-in

/*
 18. Замена всех символов строки на символ (contamination)
 
 ("abc","z") → "zzz"
 ("","z") → ""
 ("_3ebzgh4","&") → "&&&&&&&&"
 
 func contamination(string: String, char: String) -> String {
 }
 */

func contamination1(string: String, char: String) -> String {
    var internalString = String()
    for awdawd in 1...string.count {
        internalString += char
    }
    return internalString
}


// MARK: Task 19 ✅ for-in

/*
 19. Удалить пустые символы из строкик
 
 "8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
 "8aaaaa dddd r     " -> "8aaaaaddddr"
 
 func removeSpaces(string: String) -> String {
 }
 */

func removeSpaces1(string: String) -> String {
    var internalString = string
    
    for char in internalString {
        if char == " " {
            internalString.remove(at: internalString.firstIndex(of: char)!)
        }
    }
    return internalString
}

// MARK: Task 20 ✅ for-in | Should be refactored later ❗️

/*
 20. Вывести количество символов самого маленького слова в предложении
 
 "Let's travel abroad shall we" → 2
 
 func countMinWord(_ string: String) -> Int {
 }
 */

func countMinWord1(_ string: String) -> Int {
    var smallestAmount = [Int]()
    var numberOfChars = 0
    var totalNumberOfLettersPerWord = [Int]()
    var counter = 0
    for char in string {
        
        if char == " " {
            smallestAmount.append(numberOfChars)
            numberOfChars = 0
        } else {
            numberOfChars += 1
        }
        
    }
    smallestAmount.append(numberOfChars)
    
    totalNumberOfLettersPerWord = smallestAmount
    var total = totalNumberOfLettersPerWord[0]
    for number in totalNumberOfLettersPerWord {
        if number < total {
            total = number
        }
    }
    return total
}


// MARK: Task 21 ✅ for-in

/*
 21. Возвести в квадрат число если не берется корень или взять корень числа  и вернуть массив
 
 [4,3,9,7,2,1] -> [2,9,3,49,4,1]
 
 func rootOrSquare(_ array: [Int]) -> [Int] {
 }
 */

func rootOrSquare1(_ array: [Int]) -> [Int] {
    var internalArray = [Int]()
    for number in array {
        if (Double(number).squareRoot() * (Double(number).squareRoot()) == (Double(number))) {
            internalArray.append(Int(Double(number).squareRoot()))
        } else {
            internalArray.append(number * number)
        }
    }
    return internalArray
}



// MARK: Task 22 ✅ for-in, enumerated()

/*
 22. Есть отсортированный массив. Найти индекс числа или
 если нет числа индекс где он должен быть
 
 target = 7
 [1, 2, 3, 4, 6, 8, 9] -> 5
 [1, 2, 7, 9] -> 2
 
 func findIndex(_ array: [Int], target: Int) -> Int {
 }
 */

func findIndex1(_ array: [Int], target: Int) -> Int {
    var result = Int()
    for (index, value) in array.enumerated() {
        if target >= value {
            if value == target {
                result = index
                break
            } else {
            }
        } else {
            result = index - 1
        }
    }
    return result
}


// MARK: Task 23 ✅ for-in, enumerated()

/*
 23. Написать функцию которая умножает каждый элемент на индекс
 
 [1, 2, 3, 4] -> [1 * 0, 2 * 1, 3 * 2, 4 * 3] -> [0, 2, 6, 12]
 
 func multiplyIndex(_ array: [Int]) -> [Int] {
 }
 */

func multiplyIndex1(_ array: [Int]) -> [Int] {
    var internalArray = [Int]()
    for (index, value) in array.enumerated() {
        internalArray.append(value * index)
    }
    return internalArray
}



// MARK: Task 24 ✅ for-in

/*
 24. Написать функцию которая возводит каждый элемент в степень по счету
 (Переиспользовать функцию (14) возведения в степень)
 
 [10, 2, 5, 1] -> [10 ^ 1, 2 ^ 2, 5 ^ 3, 1 ^ 4] -> [10, 4, 125, 4]
 
 func multiplyPower(_ array: [Int]) -> [Int] {
 }
 */

func multiplyPower1(_ array: [Int]) -> [Int] {
    var result = [Int]()
    for number in array {
        result.append(numberToPower1(number, array.firstIndex(of: number)!))
    }
    return result
}







// MARK: Task 25 ✅

/*
 25. Написать функцию которая конвертирует строку в массив Character
 
 let string = "abcdefgh"
 let array: [Character] = Array(string) //"abc" ->  ["a","b","c"]
 
 let string1 = String(array) // ["a","b","c"] ->  "abc"
 
 "abc" -> ["a", "b", "c"]
 func convertToArray(_ string: String) -> Array<Character> {
 }
 */

func convertToArray1(_ string: String) -> Array<Character> {
    var result = [Character]()
    for letter in string {
        result.append(letter)
    }
    return result
}



// MARK: Task 26 ✅ for-in, enumerated

/*
 (string.enumerated, удаление элементов)
 
 26. Удалить первый и последний элемент строки
 
 "place" -> "lac"
 
 func removeFirstLast(_ string: String?) -> String {
 }
 */

func removeFirstLast1(_ string: String?) -> String {
    var result = String()
    guard var string = string else { return "error" }
    for (index, value) in string.enumerated() {
        if index == 0 || index == string.count - 1 {
            string.remove(at: string.firstIndex(of: value)!)
        } else {
            result.append(value)
        }
    }
    return result
}


// MARK: Task 27 ✅ for-in, enumerated()

/*
 27. Найти первый индекс элемента в строке
 
 "Hello", "l" ->  2
 "abcba", "a" -> 0
 "okko", "q" -> -1
 
 func secondSymbolIndex(word: String, symbol: Character) -> Int {
 }
 */

func firstSymbolIndex1(word: String, symbol: Character) -> Int {
    var firstIndex = -1
    for (index, value) in word.enumerated() {
        if value == symbol {
            firstIndex = index
            break
        } else {
            print("Repeating char")
        }
    }
    return firstIndex
}


// MARK: Task 28 ✅ for-in, enumerated()

/*
 28. Найти второй индекс элемента в строке
 
 "Hello", "l" ->  3
 "abcba", "a" -> 4
 "okko", "q" -> -1
 
 func secondSymbolIndex(word: String, symbol: Character) -> Int {
 }
 */

func secondSymbolIndex1(word: String, symbol: Character) -> Int {
    var firstIndex = Int()
    var secondIndex = -1
    var hit = false
    for (index, value) in word.enumerated() {
        if value == symbol && hit == false {
            firstIndex = index
            hit = true
        } else if value == symbol && hit == true {
            secondIndex = index
            break
        }
    }
    return secondIndex
}




// MARK: Task 29 ✅ for-in

/*
 29. Суммировать четные числа
 
 [4, 3, 1, 2, 5, 10, 6, 7, 9, 8]  -> 4 + 2 + 10 + 6 + 8 -> 30
 
 func sumEvenNumbers(array: [Int]) -> Int {
 }
 */

func sumEvenNumbers1(array: [Int]) -> Int {
    var result = Int()
    for number in array {
        if number % 2 == 0 {
            result += number
        }
    }
    return result
}


// MARK: Task 30 ✅ for-in

/*
 30. Посчитать разницу между максимальным и минимальным
 
 [23, 3, 19, 21, 16] -> 20 (23 - 3)
 [1, 434, 555, 34, 112] -> 554 (555 - 1)
 
 func differenceMaxMin(_ array: [Int]) -> Int {
 }
 */

func differenceMaxMin1(_ array: [Int]) -> Int {
    var sumOfMinAndMax = Int()
    
    var minNumber = array[0]
    var maxNumber = array[0]
    for number in array {
        if number < minNumber {
            minNumber = number
        }
    }
    
    for number in array {
        if number > maxNumber {
            maxNumber = number
        }
    }
    return maxNumber - minNumber
}



// MARK: Task 31 ✅ for-in index in array.count

/*
 31. Дана последовательность, найти сколько пропущено между минимальным и максимальным элементом массива
 (contains)
 
 [4,6,8] -> 2 (5, 6)
 [1,2,3,4,6] -> 1 (5)
 [1,2,3] -> 0 ()
 
 func consecutive(_ array: [Int]) -> Int {
 }
 */

func consecutive1(_ array: [Int]) -> Int {
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

// MARK: Task 32 ❌ Back later

/*
 32. Вытащить максимальные элементы из массива в заданном количестве
 
 largest(2, [7,6,5,4,3,2,1]) -> [6,7]
 
 func largest(count: Int, array: [Int]) -> [Int] {
 }
 */

func largest1(count: Int, array: [Int]) -> [Int] {
    // I can create a special array for all maximum values
    var internalArray = array
    var maxNumbers = [Int]()
    var firstNumber = array[0]
        
    for number in 0..<count {
        
        for number in internalArray {
            if number > firstNumber {
                firstNumber = number
            }
        }
        print("Remove highnest number from array and repeat search again")
        internalArray.remove(at: internalArray.firstIndex(of: firstNumber)!)
        maxNumbers.append(firstNumber)
        
    }
    return maxNumbers
}


// MARK: Task 33 ✅ for-in enumerated

/*
 33. Написать фукнцию которая проставит тире между нечетными числами
 
 "454793" -> "4547-9-3"
 
 func insertDash(string: String) -> String {
 }
 */

func insertDash1(string: String) -> String {
    var lastIndex = string.count - 1
    var internalString = String()
    for (index, value) in string.enumerated() {
        internalString.append(value)
        if Int(String(value))! % 2 != 0 && lastIndex != index {
            internalString.append("-")
        } else {
            print("even number")
        }
        
    }
    return internalString
}



// MARK: Task 34 ✅ Back later

/*
 34. По какоми индексу вставить число в отсортированном массиве
 
 ([1, 2, 3, 4, 7], 5) -> 4
 ([1, 2, 3, 4, 7], 0) -> 0
 ([1, 1, 2, 2, 2], 2) -> 2
 
 func keepOrder(array: [Int], element: Int) -> Int {
 }
 */

func keepOrder1(array: [Int], element: Int) -> Int {
    var position = Int()
    for (index, value) in array.enumerated() {
        if value > element {
            position = index
            break
        }
    }
    return position
}



// MARK: Task 35 ✅ for-in

/*
 35. Порезать строку
 
 
 trim("He", 1) -> "H..."
 
 func trim(_ string: String, _ num: Int) -> String {
 }
 */

func trim1(_ string: String, _ num: Int) -> String {
    var result = String()
    var counter = num
    var indexToTrim = string.count - num
    for (index, value) in string.enumerated() {
        if index >= indexToTrim {
            print("yo-yo")
            result.append("")
        } else {
            print("hop-hop")
            result.append(value)
        }
    }
    print(result)
    return result
}



// MARK: Task 36 ✅ for-in

/*
 36. Каждый элемент поделить на порядок в массиве и суммировать
 
 [3,4,6] -> ( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7
 
 
 func add(array: [Int]) -> Int {
 }
 */

func add1(array: [Int]) -> Int {
    var result = 0
    for (index, value) in array.enumerated() {
        result += (value / (index + 1))
    }
    return result
}


// MARK: Theoretical question. 4 способа создания пустого массива

//    var array1: [Int] = []
//    var array2: Array<Int> = []
//    var array3 = [Int]()
//    var array4 = Array<Int>()

// MARK: Task 37 ✅ for-in / Not sure of correct understanding of the task | Can make it better ❗️

/*
 37. Сделать маску для номера кредитной карты чтобы отображались только последние 4 цифры
 "4556364607935616" -> "************5616"
 
 func maskify(string: String) -> String {
 }
 */

func maskify1(string: String) -> String {
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



// MARK: Task 38 ✅ for-in

/*
 38. Найти минимальный элемент в массиве и удалить его из массива

 func removeSmallest(_ array: [Int]) -> [Int] {
 }

 [1,2,3,4,5] -> [2,3,4,5]
 [5,3,2,1,4] -> [5,3,2,4]
 [2,1,2,1,2,1] -> [2,2,2]
 [0,1,0,1,0] -> [1,1]
 */

func removeSmallest1(_ array: [Int]) -> [Int] {
    var internalArray = array
    var startNumber = array[0]
    if !internalArray.isEmpty {
        
        for number in array {
            if number < startNumber {
                startNumber = number
            }
        }
        
    } else {
        return [0, 0, 0, 0]
    }
    internalArray.remove(at: internalArray.firstIndex(of: startNumber)!)
    return internalArray
}



// MARK: Task 39 ✅

/*
 39. Один массив прибавить ко второму массиву - все способы

 [1, 2, 3] + [4, 5] -> [1, 2, 3, 4, 5]

 func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
 }
 */

// 1.
func sumArrays11(lhs: [Int], rhs: [Int]) -> [Int] {
    return lhs + rhs
}

// 2.
func sumArrays22(lhs: [Int], rhs: [Int]) -> [Int] {
    var internalArray = lhs
    
    for number in rhs {
        internalArray.append(number)
    }
    return internalArray
}

// 3.
func sumArrays33(lhs: [Int], rhs: [Int]) -> [Int] {
    var internalArray = lhs
    internalArray.append(contentsOf: rhs)
    return internalArray
}


// MARK: Task 40 ✅ / Not sure solution was right ❗️

/*
40. Вернуть первый непоследовательный элемент и его индекс

[1, 2, 3, 4, 5, 7, 8, 9] -> 7

func firstNonConsequitive(array: [Int]) -> Int {
}
*/

func firstNonConsequitive1(array: [Int]) -> Int {
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

func isDecreasing1(array: [Int]) -> Bool {
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


// MARK: Task 42 ❌

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

func someToInt1(_ value: Any) -> Int {
    
    guard let number = value as? Int else { return 0 }
    
    return number
}


// MARK: Task 45 ✅ for-in

/*
 45. Написать фукнцию суммирования всех элементов массива

 ["1", 2, 3.5] -> 6.5


 func sumOfValues(array: [Any]) -> Double {
 }
 */

func sumOfvalues1(array: [Any]) -> Double {
    var summ = Double()
    
    for value in array {
        if value is String {
            summ += Double(value as! String) ?? 1.1
        } else if value is Int {
            summ += Double(value as! Int)
        } else if value is Double {
            summ += value as! Double
        }
    }
    return summ
}
