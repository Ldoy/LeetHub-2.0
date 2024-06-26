class Solution {
    // 7개의 서로 다른 문자열이 각각 다른 value 를 가짐
    // 큰거에서 작은값으로 작성, 
    // 작은값에서 큰값으로 작성한 것은 뺄셈을 의미
    // 문자열이 주어지면 이걸 숫자로 바꾸기 

   func romanToInt(_ s: String) -> Int {
    var seperatedArray = s.split(separator: "").map { String($0) }.map { element in
        switch element {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }
    
    //value 순으로 더하되, 만약 이전 숫자가 더 크다면 자리를 바꾸고 빼기
    
    var tempArray = Stack()
    var i = 0
    
    while i < seperatedArray.endIndex {
        //
        if let tempLast = tempArray.glanceLast(),
           tempLast < seperatedArray[i] {
            let stackLast = tempArray.popLast()
            let calculation = seperatedArray[i] - stackLast
            tempArray.put(calculation)
        } else {
            tempArray.put(seperatedArray[i])
        }
        
        i += 1
    }
    
    return tempArray.values.reduce(0) { $0 + $1 }
}

struct Stack {
    var values = [Int]()
    
    mutating func popFirst() -> Int {
        return values.removeFirst()
    }
    
    mutating func popLast() -> Int {
        return values.removeLast()
    }
    
    mutating func put(_ value: Int) {
        values.append(value)
    }
    
    func glanceLast() -> Int? {
        values.last
    }
    }
}