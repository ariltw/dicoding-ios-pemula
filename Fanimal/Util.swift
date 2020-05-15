//
//  Util.swift
//  Fanimal
//
//  Created by Ariel Theodore W on 13/05/20.
//  Copyright © 2020 ariltw. All rights reserved.
//

class Util {
    func getSpeedRatio(at var1: Int, from var2: Int, to var3: Int) -> Int {
        return Int(Double(Double(var1 - var2) / Double(var3 - var2) * Double(10) / Double(2)).rounded())
    }
}
