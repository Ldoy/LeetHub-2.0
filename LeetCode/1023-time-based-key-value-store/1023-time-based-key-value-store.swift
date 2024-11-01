
class TimeMap {
    private var hash: [String: [(Int, String)]]
    init() {
        self.hash = [String: [(key: Int, value: String)]]()
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if hash[key] == nil {
            hash[key] = []
        }
        hash[key]!.append((timestamp, value))
        
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        guard let pair = hash[key] else {
            return ""
        }

        var left = 0
        var right = pair.count - 1
        var result = ""
        while left <= right {
            let mid = (left + right)/2
            
            if pair[mid].0 == timestamp {
                return pair[mid].1
            } else if pair[mid].0 < timestamp {
                result = pair[mid].1
                left = mid + 1
            } else {
                right = mid - 1 
            }

        }

        return result
    }
}

/**
 * Your TimeMap object will be instantiated and called as such:
 * let obj = TimeMap()
 * obj.set(key, value, timestamp)
 * let ret_2: String = obj.get(key, timestamp)
 */