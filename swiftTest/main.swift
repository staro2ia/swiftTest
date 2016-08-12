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
    return discremenant(a, b, c) < 0 ? ( true, (-b / (2*a) ), sqrt(-discremenant(a, b, c)) / (2*a) )
        : (false, (-b - sqrt(discremenant(a, b, c)) / (2*a), (-b + sqrt(discremenant(a, b, c)) /  (2*a) ) ) )
}

print("\(squreRoots(2, 10, 4))")
