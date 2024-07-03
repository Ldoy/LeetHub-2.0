class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var copyOfMagazine = magazine
    
        for element in ransomNote {
            if let index = copyOfMagazine.firstIndex(of: element) {
                copyOfMagazine.remove(at: index)
            } else {
                return false
            }
        }
        return true
        }
}