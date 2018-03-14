

// TODO: Create the TicTacToeGame class
class TicTacToeGame: CustomStringConvertible {
    enum GameState: String {
        case xTurn = "X's turn"
        case oTurn = "O's turn"
        case xWin = "X wins!"
        case oWin = "O wins!"
        case tieGame = "Tie Game"
    }
    enum MarkType: String {
        case x = "X"
        case o = "O"
        case none = "-"
    }
    var board: [MarkType]
    var gameState: GameState
    
    init() {
        board = [MarkType](repeating: .none, count: 9)
        gameState = .xTurn
    }
    
    func getGameString(_ indices: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]) -> String {
        var gameString = ""
        for index in indices {
            gameString += board[index].rawValue
        }
        return gameString
    }
    
    var description: String {
        return "\(gameState.rawValue) Board: \(getGameString())"
    }
    
    func pressedSquare(_ index: Int) -> String {
        switch board[index] {
        case .x:
            return "This square is already X's"
        case .o:
            return "This square is already O's"
        case .none:
            if gameState == .xTurn {
                board[index] = .x
                gameState = .oTurn
                return checkForGameOver()
            } else if gameState == .oTurn {
                board[index] = .o
                gameState = .xTurn
                return checkForGameOver()
            } else {
                return "The game is over"
            }
        }
    }
    
    func checkForGameOver() -> String {
        if !board.contains(.none) {
            gameState = .tieGame
        }
        
        var linesOf3 = [String]()
        linesOf3.append(getGameString([0, 1, 2]))
        linesOf3.append(getGameString([3, 4, 5]))
        linesOf3.append(getGameString([6, 7, 8]))
        linesOf3.append(getGameString([0, 3, 6]))
        linesOf3.append(getGameString([1, 4, 7]))
        linesOf3.append(getGameString([2, 5, 8]))
        linesOf3.append(getGameString([0, 4, 8]))
        linesOf3.append(getGameString([2, 4, 6]))
        
        for lineOf3 in linesOf3 {
            if (lineOf3 == "XXX") {
                gameState = .xWin
            } else if (lineOf3 == "OOO") {
                gameState = .oWin
            }
        }
        return gameState.rawValue
    }
}



/* ----------------- Official Playground testing ----------------- */
var game = TicTacToeGame()
game.pressedSquare(0)
game.pressedSquare(1)
game.pressedSquare(3)
game.pressedSquare(2)
game.pressedSquare(6)
game


var game2 = TicTacToeGame()
game2.board = [.x, .x, .o,
                .none, .none, .none,
                .o, .none, .none]
game2.pressedSquare(8)
game2.pressedSquare(4)


var game3 = TicTacToeGame()
game3.board = [.x, .x, .o,
    .o, .o, .x,
    .x, .o, .none]
game3.pressedSquare(8)

