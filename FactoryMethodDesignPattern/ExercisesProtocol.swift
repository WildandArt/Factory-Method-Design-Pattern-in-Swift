//
//  ExercisesProtocol.swift
//  FactoryMethodDesignPattern
//
//  Created by Artemy Ozerski on 08/06/2022.
//

import Foundation
protocol Exercises {
    var name : String{get}
    var type : String{get}

    func start()
    func stop()
}

class Jump : Exercises{
    var name = ""

    var type = ""

    func start() {

    }

    func stop() {

    }


}
class Squat : Exercises{
    var name = ""

    var type = ""

    func start() {

    }

    func stop() {

    }
}
enum Exercise{
    case jump, squat
}
//Singleton
class FactoryExercises{
    static let defaultFactory = FactoryExercises()

    func createExercise(name : Exercise)-> Exercises{
        switch name {
        case .jump:
            return Jump()
        case .squat:
            return Squat()
        }
    }
}
