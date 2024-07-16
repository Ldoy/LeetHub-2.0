class Solution {
     private var list = [Int]()

    func evalRPN(_ tokens: [String]) -> Int {
        
        // 나눗셈할 땐 몫만 가져오기
        tokens.map { element in
            
            if let element = Int(element) {
                list.append(element)
            } else {
                let last = list.popLast()!
                let beforeLast = list.popLast()!
                
                if element == "+" {
                    list.append(last + beforeLast)
                } else if element == "-" {
                    list.append(beforeLast - last)
                } else if element == "*" {
                    list.append(beforeLast * last)
                } else if element == "/" {
                    list.append(beforeLast / last)
                }
            }
        }
        return list.last!
    }
}