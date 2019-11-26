//
//  Model.swift
//  Log In View App
//
//  Created by Stepan Vasilyeu on 11/26/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import Foundation

// Массив с именем входа и паролем
var firstArray = ["User", "Password"]

// пустой массив в который будут заноситься введенные именя входа и пароль
var secondArray: [String] = []


// Функция в которой сравниваются элементы массива на соответствие
public func logIn(login: [String], password: [String]) -> Int {
    
    // количество соответствий
    var numberArrayMatches = 0
    
    for (firstValueInArray, secondValueInArray) in zip(login, password) {
        
        if firstValueInArray == secondValueInArray {
            numberArrayMatches += 1
        } else {
            numberArrayMatches += 0
        }
    }
    
    return numberArrayMatches
}
