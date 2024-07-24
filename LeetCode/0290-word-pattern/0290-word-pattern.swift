class Solution {
func wordPattern(_ pattern: String, _ s: String) -> Bool {
    //pattern -s
    var patternMap = [Character: String]()
    
    //s - pattern
    var sMap = [String: Character]()
    
    var sArray = s.split(separator: " ").map { String($0) }
    var pArray = pattern.map { Character(extendedGraphemeClusterLiteral: $0) }
    
    if sArray.count != pArray.count {
        return false
    }

    for i in 0..<pArray.count {
        let tempP = pArray[i]

        let tempS = sArray[i]
        
        if (patternMap[tempP] != nil && patternMap[tempP] != tempS) || (sMap[tempS] != nil && sMap[tempS] != tempP) {
            return false
        }
        
        patternMap[tempP] = tempS
        sMap[tempS] = tempP
        
        // 서로 다른게 매칭되어있는 경우 false
    }
    
    return true
}

}