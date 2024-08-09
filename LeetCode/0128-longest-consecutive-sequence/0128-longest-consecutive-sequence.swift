class Solution {
    // temp val - for store min lentgh of sequence
    // j - for storing next index where the sequnce stopped
    // -> O(n)
    func longestConsecutive(_ nums: [Int]) -> Int {
        // consecutive sequnce, -> nums array -> Set
        // sorted array( nlog(n))
        
        // i index -> consecutive sequence stope, -> change i -> j

        //var j - for storing next index where the sequnce stopped
        var i = 0
        var j = i + 1
        var temp = 0
        var previous = i
        let sorted = Set(nums).sorted()

         if sorted.count == 1 {
            return 1
         }
        while j < (sorted.count) {
            // search j
            if sorted[i] + 1 == sorted[j] {
                if j == (sorted.count) - 1 {
                    temp = max(temp, (j + 1) - previous)
                }
                j += 1
                i += 1
            } else {
                //i is the index where consecutive sequcne stopped
                temp = max(temp, (i + 1) - previous)
                previous = (i + 1)
                i = j
                j = i + 1
                
            }
        }
        return temp
    }
}