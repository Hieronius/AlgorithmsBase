//
//  main.swift
//  1
//
//  Created by Арсентий Халимовский on 28.09.2023.
//

import Foundation

// MARK: Metro stations
// https://incetro.notion.site/09ab10cbf99d4a05bbb136d398981c36

func getShourtestPath(_ n: Int, _ i: Int, _ j: Int) -> Int {
    var halfCircleLength = n / 2
    var routine = [Int]()

    if i < j {
        if Array(i...j).count > halfCircleLength {
            routine = Array(j...n)
            routine.append(i)
        } else {
            routine = Array(i...j)
        }
        
    } else {
        if Array(j...i).count > halfCircleLength {
            routine = Array(n...j)
            routine.append(j)
        } else {
            routine = Array(j...i)
        }
    }
    return routine.count - 2
}
getShourtestPath(2, 2, 1)
