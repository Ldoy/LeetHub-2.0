class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var cost = cost
        cost.append(0)
        var goalIndex = cost.count - 1

        var i = goalIndex - 3
        var temp = 0
        while i >= 0 {
            cost[i] += min(cost[i + 1], cost[i + 2])
            i -= 1
        }

        return min(cost[0], cost[1])
    }
}