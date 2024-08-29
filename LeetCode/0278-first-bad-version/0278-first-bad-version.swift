/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */
// 3, 1  - 
class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n //3


        while left < right {
            let mid = (left + right) / 2 //2
            if !isBadVersion(mid) {
                //오염이 안됨 
                left = mid + 1
            } else {
                // true - 오염된 버전  
                if isBadVersion(mid - 1) {
                    right = mid - 1
                } else {
                    return mid
                }
            }
        } 

        return left
    }
}


//binary search

//data - 0 ~ (n-1)
/* 
mid -> true -> left =  mid + 1
    -> false -> right = mid - 1

termination => left >= right 

*/

