// Basic function

// label, then name, then type
func stringRepeater(myStr origString: String, _ count: Int) -> String {
    var newStr = ""
    for _ in 1...count {
        newStr += origString
    }
    
    return newStr
}
stringRepeater(myStr: "B", 5)

stringRepeater(myStr: "Ho! ", 3)
stringRepeater(myStr: "New York ", 2)




// Returning a tuple (multiple return values)

func stringLetterRepeater(_ origString: String, _ count: Int) -> String {
    var newStr = ""
    for _ in 1...count {
        newStr += origString
    }
    
    return newStr
}

//var collated : String, uncollated : String
//(collated, uncollated) = stringLetterRepeater("Ow! ", 4)
//collated
//uncollated







// Internal/External names plus Optional parameters

func stringDoubler(_ origString: String, alternativeMultiple count: Int = 2) -> String {
    var newStr = ""
    for _ in 1...count {
        newStr += origString
    }
    
    return newStr
}

stringDoubler("Woof! ", alternativeMultiple: 3)
stringDoubler("Jingle Bells! ")

