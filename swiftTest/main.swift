//
//  main.swift
//  swiftTest
//
//  Created by Павел Тимош on 12.08.16.
//  Copyright © 2016 Павел Тимош. All rights reserved.
//

import Foundation

print("Hello, World!")


let discremenant = {
    (a: Double, b: Double, c: Double) -> Double in
    return b*b - 4*a*c
    
}

let squreRoots = {
    (a: Double, b: Double, c: Double) -> ( Bool, Double, Double) in
    let discremenantValue = discremenant(a, b, c)
    if discremenantValue < 0 {
        return ( true, (-b / (2*a) ), sqrt(-discremenantValue) / (2*a) )
    } else {
        return (false, (-b - sqrt(discremenantValue) ) / (2*a), (-b + sqrt(discremenantValue) ) /  (2*a) )
    }
}

print("\(squreRoots(2, 10, 4))")
