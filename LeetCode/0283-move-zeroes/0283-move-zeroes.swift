class Solution {
func moveZeroes(_ nums: inout [Int]) {
    var i = 0
    var j = 0
    var temp = 0
    temp = nums.filter { num in
        num == 0
    }.count
    
    while j < temp {
        if nums[i] == .zero {
            nums.remove(at: i)
            nums.append(0)
            j += 1
        } else {
            i += 1
        }
    }
}
}