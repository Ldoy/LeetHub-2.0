class Solution {
   func isIsomorphic(_ s: String, _ t: String) -> Bool {
    // s의 문자열과 t의 문자열 각각 매핑
    var sTotMap = [Character: Character](), tTosMap = [Character: Character]()
    var sArray = Array(s), tArray = Array(t)
    
    // s 문자열, t 문자열 매핑 추가 및 비교
    for i in 0..<sArray.count {
        let s = sArray[i]
        let t = tArray[i]
        
        if (sTotMap[s] != nil && sTotMap[s] != t) || (tTosMap[t] != nil && tTosMap[t] != s) {
            return false
        }
        
        sTotMap[s] = t
        tTosMap[t] = s
    }
    
    return true
}

}