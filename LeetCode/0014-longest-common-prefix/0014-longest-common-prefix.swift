class Solution {

func longestCommonPrefix(_ strs: [String]) -> String {
    
    // solution2 - 뒤에서부터 없애기
    var common = strs[0]
    
    for str in strs {
        
        //동일한 prefix 를 가질 때 까지 마지막을 계속 제거
        while !str.hasPrefix(common) {
            common = String(common.dropLast())
        }

    }
    
    return common
    
    // 가장 짧은 단어 찾아내기?
    
//    guard let shortest = strs.min(by: { $0.count < $1.count}) else {
//        return ""
//    }
//    
//    let maxCount = shortest.count //4
//    if strs.count == 1, strs.first?.count == 1 {
//        return strs.first ?? ""
//    }
//    var next: String = ""
//    var temp: String = ""
//    var i : Int = 0
//    
//    for str in strs {
//        if i+1 == strs.endIndex {
//            return temp
//        } else {
//            next = strs[i+1]
//        }
//        
//        let common = check(prev: str, next: next)
//        if common == "" {
//            return ""
//        } else {
//            temp = common
//        }
//    }
//    
//    return temp
}

//func check(prev: String, next: String) -> String {
//    var temp: String = ""
//    var i = 0
//    var j = 0
//    prev.map { cha in
//        i += 1
//        next.map { cha2 in
//            j += 1
//            if cha == cha2, i == j {
//                temp.append(cha2)
//            }
//            
//            if j == next.count {
//                j = 0
//            }
//        }
//        
//        i = 0
//        
//    }
//    return temp
//}
}