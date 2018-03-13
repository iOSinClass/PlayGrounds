// Basic enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var today: Weekday
today = Weekday.monday
//today.rawValue
var tomorrow: Weekday = .thursday
tomorrow = .tuesday

switch today {
    
case .monday:
    print("margarita")
case .tuesday:
    print("turn up")
case .wednesday:
    print("weekend")
case .thursday:
    print("thirsty")
case .friday:
    print("rest")
}

// Rawvalues


// Associated values and functions

enum HomeworkStatus {
    case noHomework
    case inProgress(Int, Int)
    case done
    
    func simpleDescription() -> String {
        switch self {
            
        case .noHomework:
            return "Yayyy"
        case .inProgress(let numComplete, let totalToDo):
            return "finished \(numComplete) out of \(totalToDo)"
        case .done:
            return "finished!"
        }
    }
}

var myHwStatus = HomeworkStatus.inProgress(2, 5)
myHwStatus.simpleDescription()




