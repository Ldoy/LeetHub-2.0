/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        //n - pick number
        var left = 1
        var right = n
        var mid = (right - left + 1) / 2
        if guess(n) == .zero {
                return n
        }

        while left <= right {            
            switch guess(mid) {
                case -1:
                    right = mid - 1
                case 1:
                    left = mid + 1
                case 0:
                    return mid
                default:
                    return mid
            }
            mid = (right + left)/2
        }
        return 1
    }
}