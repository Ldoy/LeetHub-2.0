class TimeMap {
    private var hash: [String: [(Int, String)]]

    init() {
        self.hash = [String: [(Int, String)]]()
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        // 키가 존재하지 않으면 새로운 리스트 생성
        if hash[key] == nil {
            hash[key] = []
        }
        // 해당 키에 (타임스탬프, 값) 쌍을 추가
        hash[key]!.append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let timeValues = hash[key] else {
            return ""
        }

        // 이진 검색으로 가장 가까운 타임스탬프 찾기
        var left = 0
        var right = timeValues.count - 1
        var result = ""

        while left <= right {
            let mid = (left + right) / 2
            if timeValues[mid].0 == timestamp {
                return timeValues[mid].1
            } else if timeValues[mid].0 < timestamp {
                result = timeValues[mid].1
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return result
    }
}