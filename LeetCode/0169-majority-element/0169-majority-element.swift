class Solution {
 func majorityElement(_ nums: [Int]) -> Int {
        // 총 원소 개수의 반 이상은 나와야 majority
        
        let half = nums.count / 2
        // half 보다 커야하고 다원소가 2개 이상인 경우엔 가장 큰걸 반환
        // 반복문 돌면서 각 원소 카운트하기

        //일단 하나씨 다 세보자
        let filtered = Set(nums).sorted()
        var temp = [Int: Int]()
        for element in filtered {
            //key 해당하는 숫자, value:  개수
            nums.map { num in
                if num == element {
                    let value = temp[element] ?? .zero
                    temp.updateValue((value + 1),
                                     forKey: element)
                }
            }
        }
    
    let filteredTemp = temp.filter { key, value in
        value >= half
    }
    
    return filteredTemp.sorted { $0.value > $1.value }
        .first?.key ?? .zero
    }
}