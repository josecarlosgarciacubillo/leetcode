/// Arrays And Hashing - Easy - Two Sum
///
/// Given an array of integers nums and an integer target, return indices of the two numbers such that they
/// add up to target.
///
/// You may assume that each input would have exactly one solution, and you may not use
/// the same element twice.
///
/// You can return the answer in any orde


class Solution {
	
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		var visited = [Int: Int]()
		
		for i in 0..<nums.count {
			let lookingNumber = target - nums[i]
			if let index = visited[lookingNumber] {
				return [i, index]
			} else {
				visited[nums[i]] = i
			}
		}
		
		return []
	}
}

let solution = Solution()
//let testCases: [Int: [Int]] = [9: [2, 7, 11, 15], 6: [3, 2, 4], 6: [3, 3]]
let target = 9
let nums = [2, 7, 11, 15]
solution.twoSum(nums, target)
/*
 for testCase in testCases.enumerated() {
 for (target, nums) in testCase {
 let answer = solution.twoSum(nums, target)
 print("Case \(i): \(answer)")
 }
 }
 */
