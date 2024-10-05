class Solution {
    var result = [Int]()
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        //하나씩 다 찾기
        check(0, 1, numbers, target)
        
        return result
    }

    func check(_ i: Int, _ j: Int, _ numbers: [Int], _ target: Int){
        var j = j
        while j < numbers.count {
            if numbers[i] + numbers[j] == target {
                result = [i + 1, j + 1]
                return
            }

            j += 1
        }
        check(i + 1, i + 2, numbers, target)
    }
}