class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
            var hash = [String: Int]()
    var result = 0
    var temp = 0
    var window = 0
    
    let seperated = s.map { String($0) }
    
    var leftPointer = 0
    var rightPointer = 0
    
        while rightPointer < seperated.count {
            let cha = seperated[rightPointer]
            if hash[cha] == nil {
                hash[cha] = 1
            } else {
                hash[cha]! += 1
            }
            var mostFrequent = 0
            hash.map { key, value in
                mostFrequent = max(mostFrequent, value)
            }
            
            if (rightPointer - leftPointer + 1) - mostFrequent <= k {
                //valid
                result = max(result, rightPointer - leftPointer + 1)
                rightPointer += 1
            } else {
                //result = rightPointer - leftPointer + 1
                
                //invalid
                let leftElement = seperated[leftPointer]
                let value = hash[leftElement]!
                hash.updateValue(value - 1, forKey: leftElement)
                leftPointer += 1
                rightPointer += 1
            }

    }
    
    return result
    
    
    }
}