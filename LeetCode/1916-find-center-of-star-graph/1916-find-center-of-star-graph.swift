class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var count = Array(repeating:0, count: edges.count + 2)

        for pair in edges {
            count[pair[0]] += 1
            count[pair[1]] += 1
        }
        
        var index = 0
        var result = 0
        count.map { element in
            if element == edges.count {
                result = index
            }
            index += 1
        }
        return result
    }
}