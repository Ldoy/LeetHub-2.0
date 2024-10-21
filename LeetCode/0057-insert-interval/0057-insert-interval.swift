class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        //새로운 인터벌의 처음과 비교
        var result = [[Int]]()
        let newStart = newInterval[0]
        let newEnd = newInterval[1]
        var i = 0
        var temp = newInterval

        while i < intervals.count && intervals[i][1] < newStart {
            result.append(intervals[i])
            i += 1
        }


        while i < intervals.count && intervals[i][0] <= newEnd {
            temp[0] = min(intervals[i][0], temp[0])
            temp[1] = max(intervals[i][1], temp[1])
            i += 1
        }

        result.append(temp)
        // while i < intervals.count {
        //     //해당 인터벌 안에 있음 
        //     if newEnd <= intervals[i][1], intervals[i][0] < newStart {
        //         result.append(intervals[i])
        //         break
        //     } else if newStart > intervals[i][1] {
        //         //if temp.isEmpty == nil {
        //             result.append(intervals[i])
        //         //}
        //     } else if intervals[i][0] <= newStart, newStart <= intervals[i][1] {
        //         temp.append(intervals[i][0])
                
        //     } else if intervals[i][0] >= newEnd {
        //         if !temp.isEmpty {
        //             temp.append(intervals[i][1])
        //             result.append(temp)
        //             temp = []
        //             break
        //        } else {
        //             result.append(intervals[i])
        //        }
        //     }
        //     i += 1
        // }
        
       while i < intervals.count {
            result.append(intervals[i])
            i += 1
        }


        return result
    }
}