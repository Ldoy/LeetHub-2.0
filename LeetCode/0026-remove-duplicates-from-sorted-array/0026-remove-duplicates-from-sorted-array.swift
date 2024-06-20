class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        //nums 은 오름차순, 
        var tempSet = Set(nums)
        nums = Array(tempSet.sorted())
        return tempSet.count
        // 중복되는 유닉 엘리먼트를 찾아야함. 남은 원소 수를 반환



    }
}