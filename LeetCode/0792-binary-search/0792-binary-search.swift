class Solution {
    
func search(_ nums: [Int], _ target: Int) -> Int {
    //half -> half의 기준점 저장. -> contain 여부 확인 -> 기준점 변경
    
    if nums.isEmpty {
        return -1
    }

    var startIndex = 0
    var endIndex = (nums.count - 1)

    
  while startIndex <= endIndex {
       let mid = (startIndex + endIndex) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            startIndex = mid + 1
        } else {
            endIndex = mid - 1
        }
    }
    
    return -1
   
}
}