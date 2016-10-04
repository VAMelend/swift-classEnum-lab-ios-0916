//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 0
    case medium = 1
    case fast = 2
    
    
    func isFaster(thanSpeed speed:Speed) -> Bool {
        if speed.rawValue < self.rawValue {
            return true
        }
        else {
            return false }
        
    }
}

enum Diet: String {
    case meatEater
    case vegetarian
}

enum Sex: String {
    case male
    case female
}

class Trex {
    var speed: Speed = Speed.fast
    var diet: Diet = Diet.meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex){
        self.name = name
        self.sex = sex
    }
    
    
    func speak () -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex:Trex) -> Bool {
        if trex.speed.rawValue < self.speed.rawValue {
            return true
        }
        else {
            return false}
    }
    
    func eat(otherTrex trex: Trex) {
        if isFaster(thanTrex: trex) == true {
            trex.isAlive = false
        }
        else {
            trex.isAlive = true 
        }
    }
}


