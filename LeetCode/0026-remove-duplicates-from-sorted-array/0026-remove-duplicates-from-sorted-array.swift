class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        //nums 은 오름차순, 
        // var tempSet = Set(nums)
        // nums = Array(tempSet.sorted())
        // return tempSet.count
        // 중복되는 유닉 엘리먼트를 찾아야함. 남은 원소 수를 반환

        //Solution2 - for 문 돌면서 동일하지 않은 것들만 임시 배열에 담기
        var tempArray = [Int]()
        for num in nums {
            if tempArray.contains(num) {
                continue
            } else {
                tempArray.append(num)
            }
        }
    
        nums = tempArray.sorted()
        return nums.count
        //Solution3 - 고차함수 이용하기
        

    }
}