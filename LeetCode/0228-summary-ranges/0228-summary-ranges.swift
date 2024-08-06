class Solution {
func summaryRanges(_ nums: [Int]) -> [String] {
    var temp = [[Int]]()
    var i = 0
    var k = 0
                
    while i < nums.count {
        if i == (nums.count - 1) {
            temp.append([nums[k], nums[i]])
            k = i + 1
            i += 1
        } else if nums[i] + 1 == nums[i + 1] {
            i += 1
        } else {
            temp.append([nums[k], nums[i]])
            k = i + 1
            i += 1
        }
    }
        
    var output = [String]()
    for element in temp {
        if element[0] == element[1] {
            output.append("\(element[0])")
        } else {
            output.append("\(element[0])->\(element[1])")
        }
    }

    return output
}
}