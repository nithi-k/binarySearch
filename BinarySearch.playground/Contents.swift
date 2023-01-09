import UIKit
// Nithi Kulaisiriswatdi
// BinarySearch.playground
// Finding item index from Binary seach algorithym
// return -1 if not found

let sourceData = ["hijk","bcc","cd","efg","aa", "abb" ,"ac", "bbz", "bc", "ca","cb","cc", "d", "z","aaaaaa","ba","bz","bzz"]

// sort data
func prepareData() -> [String] {
    sourceData.sorted(by: { $0.lowercased() < $1.lowercased() })
}

func searchArray(text: String, data: [String]) -> Int {
    guard !data.isEmpty else {
        return -1
    }
    let text = text.lowercased()
    // midIndex = minIndex + (maxIndex - minIndex) in, thin case minIndex always be zero. so I put ata.count/2 for short.
    let midIndex = data.count/2
    let maxIndex: Int
    let minIndex: Int

    let midValue = data[midIndex]
    
    if midValue == text {
        // return matched index
        return midIndex
    }
    // we split sorted data into half
    // if the search value is more than mid => use right array
    if text > midValue {
        minIndex = midIndex
        maxIndex = data.count - 1
    }
    // else use left data
    else {
        minIndex = 0
        maxIndex = midIndex
    }
    if minIndex == 0 && maxIndex == 1 || midValue == text{
        return -1
    }
    // recursive call the function from the new target array
    return searchArray(text: text, data: Array(data[minIndex...maxIndex]))
}

// test found result
var searchText = "bbz"
let foundIndex = searchArray(text: searchText, data: prepareData())
print("\(searchText)'s index is \(foundIndex)")

// test not found result
searchText = "Nithi T T"
let notFoundIndex = searchArray(text: searchText, data: prepareData())
print("\(searchText)'s index is \(notFoundIndex)")


