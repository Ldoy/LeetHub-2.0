class Solution {
    func isPalindrome(_ s: String) -> Bool {
       //alphnumeric 캐릭터 어떻게 판단하면 좋을까? Character의 프로퍼티 이용

       //공백 없애고 다 문자로 만들기
       // 앞, 뒤로 인덱스 옮기면서 맞는지 확인하

       //인덱스가 홀수/ 짝수 상관없나???-> 그치 상관없지
    var tempS: [Character] = []
    s.lowercased().map { cha in
        if cha.isLetter || cha.isNumber {
            tempS.append(cha)
        }
    }
    
    
    var i = 0
    var j = tempS.endIndex - 1
//    var j = Int(ceil(Double(tempS.endIndex / 2))) // 반절 한 것 올림 한 것 까지만 for 돌기
    
    for cha in tempS {
        
        if cha == tempS[j] {
            j -= 1
            continue
        } else {
            return false
        }
    }
     return true
}

}


// func isAlphanumeric(_ character: Character) -> Bool {
//     return character.isLetter || character.isNumber
// }