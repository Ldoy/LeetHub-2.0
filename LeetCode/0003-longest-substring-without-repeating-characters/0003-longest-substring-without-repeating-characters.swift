class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var window = [String]()
        var result = 0
        let divided = s.map { cha in
            if cha == " " {
                String(" ")
            } else {
                String(cha)
            }
        }

         for cha in divided {
        if window.contains(cha) {
            result = max(result, window.count)
            let index = window.firstIndex(of: cha)!
            window.removeSubrange(0...index)
            //window = []
        }
        
        window.append(cha)
        result = max(result, window.count)
    }
        
        // if window != nil {
        //     return window.count
        // } else {
        //     return result
        // }

        return result
    }
}