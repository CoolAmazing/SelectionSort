var wordArray = [String]()
func selectionSort(_ array: [String]) -> [String] {
    var a = array  
    for x in 0 ..< a.count - 1 {
        var lowest = x
        for y in x + 1 ..< a.count {
            if a[y] < a[lowest] {
                lowest = y
            }
        }
        if x != lowest {            
            a.swapAt(x, lowest)
        }
    }
    return a
}


