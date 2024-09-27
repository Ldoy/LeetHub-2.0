class Solution {
    func climbStairs(_ n: Int) -> Int {
        // n 일 때 
        var one = 1
        var two = 1 
        for i in 0..<(n - 1) {
            let temp = one
            one = one + two
            two = temp
        }      

        return one
    }
}