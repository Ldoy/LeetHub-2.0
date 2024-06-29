class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
    // 바늘의 첫 문자열과 동일할때까지 앞의 문자열 drop
    // 첫 문자열 만나면 해당 인덱스 저장
    // 그 다음부터 바늘의 문자열과 동일하면 => 그 문자 temp 에 저장
    // temp 에 저장한게 needle 과 동일한경우 인덱스 반환
    
    guard haystack != "" && needle != "" else {
        return -1
    }
    //leetcode  leeto
    var index = 0
    var tempHaystack = haystack
    
    for cha in haystack {
        while tempHaystack.first != needle.first {
            if tempHaystack == "" {
                return -1
            }
            tempHaystack.removeFirst()
            index += 1
        }
        
        if tempHaystack.hasPrefix(needle) {
            return index
        } else {
            tempHaystack.removeFirst()
            index += 1
        }
    }
    
    return -1
    
    }
}