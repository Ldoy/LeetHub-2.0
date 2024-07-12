class Solution {
    var list: [String] = []

func simplifyPath(_ path: String) -> String {
    var tempList = path.split(separator: "/").map { String($0) }
    
    for element in tempList {
        list.append("/")
        add(element)
    }
//    print(list.joined())
     if list.isEmpty {
        list.append("/")
    }
    return list.joined()
}


    
func add(_ value: String) {
        if value == "/" {
            // 아무것도 하지 않고 다음으로
        } else if value == ".." {
            list.popLast() // / 없애기
            list.popLast() // 해당 디렉토리 없애기
        } else if value == "." {
            
        } else {
            list.append(value)
        }
        
       if list.last == "/", !list.isEmpty {
            list.popLast()
        }
}

}

// .. 는 기존 스택에 쌓여있는 가장 마지막 디렉토리 없애는 것
// ... 는 디렉토리 이름
// .  는 무시 
//  // 가 두개 이상이면 하나로 합치기?
// 마지막에 디렉토리가 없다면 슬레시 없애기 