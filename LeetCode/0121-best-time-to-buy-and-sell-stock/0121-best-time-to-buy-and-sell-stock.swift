class Solution {
func maxProfit(_ prices: [Int]) -> Int {
      // 파는날 > 사는날, 파는날 - 사는날의 이윤 최고 높은 것 리턴하기
      // Solution1 = 일단 다 계산해보기, 10분 => 결과 : TimeLimit Exceeded
    //var tempProfit = 0
    // var tempPrev = 0
    // var tempNext = 1
    
    // for i in 0..<(prices.count - 1) {
    //     while tempNext < prices.count {
    //         tempProfit = max(prices[tempNext] - prices[tempPrev], tempProfit)
    //         tempNext += 1
    //     }
    //     tempPrev += 1
    //     tempNext = (tempPrev + 1)
    // }
    // // socution2 -> 동일하게 타임초과
    //  for i in 1..<(prices.count) {
    //   prices[0...i].map { num in
    //       tempProfit = max(prices[i] - num, tempProfit)
    //     }
    //    }
    
    //soluction3 - 카데인 알고리즘
    // prices 배열이 A, B, C, D, E 의 원소를 가진다고 하고, 각 원소의 차이를 i, j, k, l 이라고 가정
    // C-A 는 C - B + i와 동일. 
    // 그럼 D - B는? => D - C + j 와 동일 

    if prices.count <= 1 {
        return 0
    }

    var tempProfit = 0, currentProfit = 0
    for index in 1..<prices.endIndex {
        // 1회차 -> 2번째 - 1번째 , 2회차 -> 3번째 -2번째 + 2번째와1번째의 차이 == 3번째 - 1번째
        // 3회차 -> 4번째 - 3번째 + 3번과2번차이 == 4번 - 1번 
        currentProfit = max(0, currentProfit + prices[index] - prices[index - 1])
        tempProfit = max(tempProfit, currentProfit)
    }
    
    return tempProfit
    }
}