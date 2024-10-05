class Solution {
    var result: Int = -1

    func maximumDifference(_ nums: [Int]) -> Int {
        
        if nums == [] {
            return -1
        }

        for k in 0..<nums.count {
            check(k, k + 1, nums)
        }
        
        return result
    }

    func check(_ i: Int, _ j: Int, _ nums: [Int]) {
        var i = i
        var j = j
        while j < nums.count {
            if nums[i] < nums[j], i < j {
                result = max(result, nums[j] - nums[i])
                j += 1
            } else {
                j += 1
            }
        }
    }
}