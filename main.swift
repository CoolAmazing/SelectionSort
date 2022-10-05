var words = [String]()

func readWords() -> [String] {
    var line : String?
    repeat {
        line = readLine()
        if line != nil {
            words.append(line!)
        }
    } while line != nil
    return words
}

func selectionSort(_ array: [String]) -> [String] {
    var a = readWords()  
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

let a = selectionSort(words)

for x in a{
    print(x)
}
