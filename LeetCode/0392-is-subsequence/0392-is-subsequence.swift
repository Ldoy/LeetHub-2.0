class Solution {
    // Solution1 - Time Limit Exceeded
    // s 의 문자 순서가 t에서도 그대로 재현되는지 보자 . 
    // func isSubsequence(_ s: String, _ t: String) -> Bool {
    // //s를 다 쪼개, t 도 쪼개..? => s 가  t 의 인덱스 어느 위치에 있는지 찾아 -> 그 이하부터만 다시 재할달해서 또 찾아 -=> 다 있으면 트루??
    // var newS = s.map { $0 }
    // var newT = t.map { $0 }
    
    // var startIndex = t.startIndex
    // var endIndex = t.endIndex
    // var i = 0
    // var tempS = ""
    // while i != (newS.count) {
    //     for chaT in t[startIndex..<endIndex] {
    //         if newS[i] == chaT {
    //             startIndex = t.index(startIndex, offsetBy: i)
    //             tempS.append(chaT)
    //             i += 1
    //             break
    //         } else {
    //             continue
    //         }
    //     }
    // }
    
    // if tempS == s {
    //     return true
    // } else {
    //     return false
    // }
    // }

func isSubsequence(_ s: String, _ t: String) -> Bool {

    var newS = s.map { $0 }
    var newT = t.map { $0 }
    var i = 0
    var j = 0
    var sIndexes = [Int]()
    var tIndexes = [Int]()
    
    newS.map { chaS in
        j = i
        for t in i..<newT.count {
            if chaS == newT[t] {
                tIndexes.append(t)
                // 다음 시작 인덱스
                i = t + 1
                break
//                tIndexes.append(t)
//                j += (t + 1)
//                
                if i > newT.count {
                    break
                }
            }
        }
    }
    
    let filtered = tIndexes.sorted()
    
    if filtered == tIndexes, filtered.count == newS.count {
        return true
    } else {
        return false
    }
}
}