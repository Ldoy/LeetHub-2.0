class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomArray = ransomNote.map { String($0) }.sorted()
        var magazineArray = magazine.map { String($0) }.sorted()
        
        for element in ransomArray {
            if magazineArray.contains(element) {
                let index = magazineArray.firstIndex(of: element)
                magazineArray.remove(at: index!)
                continue
            } else {
                return false
            }
        }
        return true
    }
}