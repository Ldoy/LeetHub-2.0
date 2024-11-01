class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var current = [Int]()
        func dfs(_ i: Int) {
            if i >= nums.count {
                let current = current
                result.append(current)
                return 
            } 
            var index = i
            current.append(nums[i])
            dfs(index + 1)

            current.popLast()
            dfs(index + 1)
        }

        dfs(0)
        return result
    }
}