class Solution {
    func findMin(_ nums: [Int]) -> Int {
     //two sorted array, each arrray's start number
    /*
    where is the mid -> left, right

    */

    var left = 0
    var right = nums.count - 1

    while left < right {
        let mid = left + (right - left) / 2

        if nums[mid] > nums[right] {
            //mid is in left array 
            left = mid + 1
        } else {
            right = mid
        }
    }

    return nums[left]

    }
}