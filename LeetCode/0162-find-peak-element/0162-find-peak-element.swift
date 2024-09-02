class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        //mid -> mid-1, mid + 1
        //if  -> mid-1 < mid // 
                // mid > mid + 1 => return 
                // mid < mid + 1 => mid는 왼쪽으로 
        // if -> mid-1 > mid // 4,1,n
                // mid > mid+1 =>  4,3,1 mid 왼쪽으로 
                // mid < mid+1 => 4,3,5 mid 왼쪽 오른쪽 모두 check
                // => Go any way depending on which side your program is checking. Both side there is at least 1 peak
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = (left + right) / 2

            if mid > 0, nums[mid] < nums[mid - 1] {
                right = mid - 1
            } else if mid < nums.count - 1, nums[mid] < nums[mid + 1] {
                left = mid + 1
            } else {
                return mid
            }
        }
        return right
    }       
}