class Solution {
    //https://leetcode.com/problems/find-the-town-judge/solutions/4764878/swift-optimal-solution-array
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
       guard n > 1 else {
        if trust == [] {
            return 1
        }
         return -1
       }

       var score = Array(repeating: 0, count: n + 1) 
       for pair in trust {
        score[pair[0]] -= 1
        score[pair[1]] += 1
       }

       return score.firstIndex { $0 == n - 1} ?? -1
    }

}