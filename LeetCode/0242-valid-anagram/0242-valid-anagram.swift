class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
      if s.count != t.count {
          return false
      }

      var sHash = [String: Int]()
      var tHash = [String: Int]()
      s.map { cha in
          if (sHash[String(cha)] != nil) {
              sHash[String(cha)]! += 1
          } else {
              sHash[String(cha)] = 1
          }
      }

      t.map { cha in
          if (tHash[String(cha)] != nil) {
              tHash[String(cha)]! += 1
          } else {
              tHash[String(cha)] = 1
          }
      }

      for (key, value) in sHash {
          if tHash[key] == value {
              continue
          } else {
              return false
          }
      }

      return true
  }



}