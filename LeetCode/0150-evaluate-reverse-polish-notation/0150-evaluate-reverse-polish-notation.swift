class Solution {
    private var list = [Int]()

    func evalRPN(_ tokens: [String]) -> Int {
        
        for token in tokens {
            
            switch token {
            case "+":
                let last = list.popLast()!
                let beforeLast = list.popLast()!
                list.append(last + beforeLast)

            case "-":
                let last = list.popLast()!
                let beforeLast = list.popLast()!
                list.append(beforeLast - last)

            case "*":
                let last = list.popLast()!
                let beforeLast = list.popLast()!
                list.append(beforeLast * last)

            case "/":
                let last = list.popLast()!
                let beforeLast = list.popLast()!
                list.append(beforeLast / last)

            default:
                list.append(Int(token)!)
            }
        }
        
        return list.last!
    }
}