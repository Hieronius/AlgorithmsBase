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
        
        
    }
    
}

//import Glibc
//import Foundation
//
//public struct StderrOutputStream: TextOutputStream {
//    public mutating func write(_ string: String) { fputs(string, stderr) }
//}
//public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

let inputs = (readLine()!).split(separator: " ").map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
let initialTx = Int(inputs[2])! // Thor's starting X position
let initialTy = Int(inputs[3])! // Thor's starting Y position

// game loop
//while true {
//    let remainingTurns = Int(readLine()!)! // The remaining amount of turns Thor can move. Do not remove this line.
//
//    // Write an action using print("message...")
//    // To debug: print("Debug messages...", to: &errStream)
//
//
//    // A single line providing the move to be made: N NE E SE S SW W or NW
//    print("SE")
//}


