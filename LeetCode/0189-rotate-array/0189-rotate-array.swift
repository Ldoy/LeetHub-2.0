class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
    var k = k
    while k > 0 {
        guard let last = nums.popLast() else {
            return
        }
        nums.insert(last, at: 0)
        k -= 1
    }
}
}