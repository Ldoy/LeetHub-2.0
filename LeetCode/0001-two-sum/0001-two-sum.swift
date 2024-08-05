class Solution {

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
      // 더해서 타겟이 나오는걸 구해라
//    let sortedNum = nums.filter { num in
//        num <= target
//    }.sorted()
//    
    var j = 0
    var temp = [Int]()
    
    for i in 0..<nums.count {
        while j < nums.count {
            if i == j {
                j += 1
            } else if nums[i] + nums[j] == target {
                temp = [i, j]
                return temp
            } else {
                j += 1
            }
        }
        j = 0
    }
    return temp
}
}