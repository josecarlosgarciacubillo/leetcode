/// Arrays And Hashing - Easy - Constains Duplicates
///
/// Given an integer array nums, return true if any value appears at least twice
/// in the array, and return false if every element is distinct.

class Solution {
  
  func containsDuplicate(_ nums: [Int]) -> Bool {
    var visited = Set<Int>()
    
    for number in nums {
      if visited.contains(number) {
        return true
      } else {
        visited.insert(number)
      }
    }
    
    return false
  }
}

let solution = Solution()
let testCases = [[1, 2, 3, 1], [1, 1, 1, 3, 3, 4, 3, 2, 4, 2], [1, 2, 3, 4]]

for (i, testCase) in testCases.enumerated() {
  let answer = solution.containsDuplicate(testCase)
  print("Case \(i): \(answer)")
}
