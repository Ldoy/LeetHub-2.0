class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if (m == .zero && n == .zero) || (nums2.count == .zero && nums1.count == .zero) {
            nums1 = []
            return
        } else if m == .zero || nums1.count == .zero {
            let slice = nums2[0..<n]
            nums1 = Array(slice)
            return
        } else if n == .zero || nums2.count == .zero {
            let slice = nums1[0..<m]
            nums1 = Array(slice)
            return
        } else {
            // 각 배열에서 합칠 원소들만 따로 저장하기
         var tempNums1 = nums1[0..<m]
         var tempNums2 = nums2[0..<n]

         // 두 배열을 합칠 빈 배열 만들어 할당
         let tempMergedArray = tempNums1 + tempNums2

         // 합친 배열을 arry1에 할당
         nums1 = tempMergedArray.sorted()
        
        }
    }
}