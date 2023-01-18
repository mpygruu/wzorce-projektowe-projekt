import Foundation

class InputHandler {
    func getInput() -> (Float, String) {
        var kilometersValid: Bool = false
        var subscriptionValid: Bool = false
        
        var kilometers: Float = 0
        var subscriptionType: String = ""
        
        while !kilometersValid || !subscriptionValid {
            
            print("Podaj ilość km w trasie: ", terminator: "")
            let kmInput: String = readLine()!
            
            
            if let validKm = Float(kmInput) {
                kilometers = validKm
                kilometersValid = true
            }
            
            print("Podaj rodzaj subskrypcji (F/S/E): ", terminator: "")
            let subscriptionInput = readLine()!
            
            if ["F", "S", "E"].contains(subscriptionInput) {
                subscriptionType = subscriptionInput
                subscriptionValid = true
            }
            
            if !kilometersValid || !subscriptionValid {
                kilometersValid = false; subscriptionValid = false
                print("Niepoprawne dane.")
            }
        }
        
        return (kilometers, subscriptionType)
    }
}

