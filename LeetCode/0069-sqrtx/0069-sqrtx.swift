class Solution {
func mySqrt(_ x: Int) -> Int {
    // 1, 2,3 , 4, ... - sorted array
    // temination - array의 elemetn rk x 넘김
    var element = 0
    if x == 1 {
        return 1
    }
    
    while element <= x {
        if (element * element) > x {
            return element - 1
        } else if element * element == x {
          return element
        } else {
            element += 1
        }
    }
    return -1
}

}