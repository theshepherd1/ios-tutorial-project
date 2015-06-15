//: Playground - noun: a place where people can play

import UIKit
import Foundation

protocol Speaker {
    func Speak()
    func TellJoke()
}

class Vicki: Speaker {
     func Speak() {
        println("Hello I am Vicki!")
    }
    func TellJoke() {
        println("What do police tell his belly button?")
    }
}

class Ray: Speaker {
     func Speak() {
        println("My name is Ray")
    }
    func TellJoke() {
        println("What do sushi A say to sushi B?")
    }
    func WriteTutorial() {
        println("I am on it")
    }
}

class Animal  {
    
}

class Dog: Animal, Speaker {
     func Speak() {
        println("woof!")
    }
    func TellJoke() {
        
    }
}

protocol DateSimulatorDelegate {
    func dateSimulatorDidStart(sim: DateSimulator, a:Speaker, b: Speaker)
    func dateSimulatorDidEnd(sim: DateSimulator, a:Speaker, b:Speaker)
}

class LoggingDateSimulator: DateSimulatorDelegate {
    func dateSimulatorDidStart(sim: DateSimulator, a: Speaker, b: Speaker) {
        println("Date started")
    }
    func dateSimulatorDidEnd(sim: DateSimulator, a: Speaker, b: Speaker) {
        println("Date ended")
    }
}


class DateSimulator {
    let a: Speaker
    let b: Speaker
    
    var delegate: DateSimulatorDelegate? = LoggingDateSimulator()
    
    
    
    init(a: Speaker, b:Speaker) {
        self.a = a
        self.b = b
    }
    
    func Simulate() {
        delegate?.dateSimulatorDidStart(self, a: a, b: b)
        println("Meet at a restaurant")
        a.Speak()
        b.Speak()
        a.TellJoke()
        b.TellJoke()
        delegate?.dateSimulatorDidEnd(self, a: a, b: b)
    }
}



let a = Ray()
let b = Vicki()

let sim = DateSimulator(a: a, b: b)
sim.Simulate()



import UIKit

class TestDataSource












