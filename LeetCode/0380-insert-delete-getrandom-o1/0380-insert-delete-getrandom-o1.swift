
class RandomizedSet {
    var hash: [Int]
    
    init() {
        self.hash = [Int]()
    }
    
    func insert(_ val: Int) -> Bool {
        // new - insert, return false /
        if hash.contains(val) {
            return false
        } else {
            hash.append(val)
            return true
        }
    }
    
    func remove(_ val: Int) -> Bool {
        if hash.contains(val), let index = hash.firstIndex(of: val) {
            
            hash.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
    func getRandom() -> Int {
        let randomNumber = Int.random(in: 0..<hash.count)
        return hash[randomNumber]
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */