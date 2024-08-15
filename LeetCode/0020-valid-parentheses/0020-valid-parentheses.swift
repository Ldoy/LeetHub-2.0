class Solution {
 
func isValid(_ s: String) -> Bool {
       let seperatedArray = s.map { String($0) }
       var bracketsHash = [[String: String]]()
       if seperatedArray.count % 2 > 0 {
           return false
       } else {
           for element in seperatedArray {
               if element == "(" {
                   bracketsHash.append([element: ")"])
               } else if element == "[" {
                   bracketsHash.append([element: "]"])
               } else if element == "{" {
                   bracketsHash.append([element: "}"])
               } else {
                   //closed brakets
                   if bracketsHash.last?.values.first == element {
                       bracketsHash.popLast()
                   } else {
                       return false
                   }
               }
           }
                  
           if bracketsHash.isEmpty {
               return true
           } else {
               return false

           }
       }
   }
}
