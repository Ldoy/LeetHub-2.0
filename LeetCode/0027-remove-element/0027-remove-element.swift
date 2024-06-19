class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        // nums 안에 val 에 해당하는 원소를 _ 로 바꾸고, _ 제외한 원소의 개수를 리턴하기
        // nums 에는 새로운 배열 할당하기

        //edgecase1
        if nums.count == .zero {
            return .zero
        }

        var tempNums: [Int] = []
        nums.map { element in
            if element != val {
                tempNums.append(element)
            }
        }

        nums = tempNums
        return tempNums.count
    }
}