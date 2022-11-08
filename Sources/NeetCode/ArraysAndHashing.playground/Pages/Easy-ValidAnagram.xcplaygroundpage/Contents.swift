/// Arrays And Hashing - Easy - Valid Anagram
///
/// Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.
/// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase,
/// typically using all the original letters exactly once.

class Solution {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
      guard s.count == t.count else { return false }
      
      var map = [Character: Int]()
      
      for char in s {
        if let times = map[char] {
          map[char] = times + 1
        } else {
          map[char] = 1
        }
      }
      
      for char in t {
        if let times = map[char] {
          map[char] = times - 1
        } else {
          map[char] = 1
        }
      }
      
      for (char, times) in map {
        if times != 0 {
          return false
        }
      }
      
      return true
    }
}

let solution = Solution()
let testCases = [1: ["anagram", "nagaram"], 2: ["rat", "car"], 3: ["aa", "bb"]]

for (i, testCase) in testCases {
  let answer = solution.isAnagram(testCase[0], testCase[1])
  print("Case \(i): \(answer)")
}
