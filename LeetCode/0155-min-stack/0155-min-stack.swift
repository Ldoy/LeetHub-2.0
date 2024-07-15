
class MinStack {

    var list: [Int] = []
    private var minElement: Int = .max

    init() {
        //
    }
    
    func push(_ val: Int) {
        list.append(val)
        self.minElement = min(minElement ?? .max, val)
    }
    
    func pop() {
        let value = list.popLast()
//        print(value)
        if value == minElement {
            minElement = .max
        }
    }
    
    func top() -> Int {
        return list.last!
    }
    
    func getMin() -> Int {
        self.list.map { element in
            minElement = min(element, minElement)
        }
        return minElement
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */