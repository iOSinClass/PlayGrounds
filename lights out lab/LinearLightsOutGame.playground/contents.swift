import Foundation
// TODO: Create the LinearLightsOutGame class
class LinearLightsOutGame: CustomStringConvertible {
    var numLights: Int
    var lightStates: [Bool]
    var moves: Int
    var gameOver: Bool
    
    init(numLights: Int) {
        self.numLights = numLights
        self.moves = 0
        self.gameOver = false
        self.lightStates = [Bool](repeating: false, count: numLights)
        let numPresses = Int(arc4random_uniform(UInt32(15))) + 1
        for _ in 1...numPresses {
            pressedLightAtIndex(Int(arc4random_uniform(UInt32(numLights))), false)
        }
    }
    
    var description: String {
        return "Lights: \(lightDescription()) Moves: \(moves)"
    }
    
    func lightDescription() -> String {
        var ret = ""
        for light in lightStates {
            if light {
                ret += "1"
            } else {
                ret += "0"
            }
        }
        return ret
    }
    
    func pressedLightAtIndex(_ index: Int, _ extra: Bool = true) -> Bool {
        if !gameOver {
            lightStates[index] = !lightStates[index]
            if (index > 0) {
                lightStates[index - 1] = !lightStates[index - 1]
            }
            if (index < numLights - 1) {
                lightStates[index + 1] = !lightStates[index + 1]
            }
            if extra {
                moves += 1
                gameOver = !lightStates.contains(true)
            }
        }
        return !lightStates.contains(true)
    }
}


/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg
//
//
var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2

