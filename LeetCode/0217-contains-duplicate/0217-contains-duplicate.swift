class Solution {
    // check duplicated element in nums

    //bf -> check every element 
        //-> O(n2)
    //Array -> Set, count => true, false
        //-> O(n)??
    func containsDuplicate(_ nums: [Int]) -> Bool {
        //bf
        // var i = 0
        // var j = 0
        // for i in 0..<nums.count {
        //     for j in 0..<nums.count {
        //         if i == j {
                    
        //         } else if num[i] == nums[j] {
        //             return false
        //         }
        //     }
        // }


        let arrayCount = nums.count
        let setFromArray = Set(nums)

        if arrayCount == setFromArray.count {
            return false
        } else {
            return true
        }
    }
}