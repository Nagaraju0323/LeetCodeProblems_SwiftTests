//
//  Contains Duplicate.swift
//  LeetCodeProblems_Swift
//
//  Created by Nagaraju on 22/12/23.
//



import Foundation
class Solution {
    
    
    //MARK: - 217. Contains Duplicate
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var hashSet = Set<Int>()
        
        for num in nums {
            if hashSet.contains(num) {
                return true
            }
            hashSet.insert(num)
        }
        return false
    }
    
    
    
    //MARK: - 242. Valid Anagram
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        if s.count != t.count { return false }
        
        if s.sorted() != t.sorted() { return false }
        
        var Sdict = [Int:Int]()
        var Tdict = [Int:Int]()
        
        let sArr = Array(s)
        let tArr = Array(t)
        
        for i in 0..<sArr.count {
            Sdict[Int(sArr[i].asciiValue!),default: 0] += 1
            Tdict[Int(tArr[i].asciiValue!),default: 0] += 1
        }
        
        for (key,_) in Sdict {
            
            if Sdict[key] != Tdict[key] {
                return false
            }
        }
        return true
    }
    
    
    //MARK: 1. Two Sum
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashdict = [Int:Int]()
        
        for (index,val) in nums.enumerated() {
            
            let diff = target - val
            if let firstIndex = hashdict[diff] {
                return [firstIndex,index]
            }
            hashdict[val] = index
        }
        return []
    }
    
    
    //MARK: 49. Group Anagrams (Medium)
    
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var hashDict:[String:[String]] = [:]
        
        
        for str in strs {
            let sort = String(str.sorted())
            hashDict[sort,default: []].append(str)
        }
        
        let result = Array(hashDict.values).sorted {
            $0[0] < $1[0]
        }
        return result
    }
    
    //MARK: - Top K Frequent Elements - Medium
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        var hashDict : [Int:Int] = [:]
        
        for num in nums {
            hashDict[num,default: 0] += 1
        }
        
        let result = Array(hashDict.keys.sorted {
            hashDict[$0]! > hashDict[$1]!
        }.prefix(k))
        return result
    }
    
    //MARK: - 238. Product of Array Except Self
    
    func productExceptSelf(_ nums: [Int]) ->[Int] {
        
        var res = [Int](repeating: 1, count: nums.count)
        
        var prefix = 1
        
        for i in 0..<nums.count{
            res[i] = prefix
            prefix *= nums[i]
        }
        
        var postfix = 1
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            
            res[i] *= postfix
            postfix *= nums[i]
        }
        
        return res
        
    }
    
    //MARK: - 128. Longest Consecutive Sequence
    
    func longestConsecutive(_ nums: [Int]) -> Int {
        
        var numSet = Set(nums)
        var maxCount = 0
        
        for num in numSet where !numSet.contains(num - 1) {
            var visitingNum = num + 1
            var currentCount = 1
            while(numSet.contains(visitingNum)) {
                visitingNum += 1
                currentCount += 1
            }
            maxCount = max(maxCount,currentCount)
        }
        return maxCount
    }
    
    //MARK: - 128. String Polidrom or not
    
    func isPalindrome(_ s: String) -> Bool {
        
        var allowCharecterSet = CharacterSet.alphanumerics
        var strConverted = s.components(separatedBy: allowCharecterSet.inverted).joined(separator: "")
        let reversedString = String(strConverted.reversed())
        if strConverted.lowercased() != reversedString.lowercased() {
            return false
        }
        return true
        
        
    }
    
    
    //MARK: - 167. Two Sum II - Input Array Is Sorted
    
    func twoSums(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var left = 0,right = numbers.count - 1
        
        while(left < right) {
            var currentCount = numbers[left] + numbers[right]
            if currentCount > target {
                right -= 1
            }else if currentCount < target {
                left += 1
            }else {
                return [left + 1,right + 1]
            }
        }
        return []
    }
    
    //MARK: - 561. Array Partition
    
    func arrayPairSum(_ nums: [Int]) -> Int {
        
        var sortedLst = nums.sorted()
        var sum  = 0
        for i in stride(from:0,to: nums.count,by: 2) {
            sum += sortedLst[i]
        }
        return sum
    }
    
    //MARK: Unique Number of Occurrences
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        
        var hashMap :[Int:Int] = [:]
        for arrnum in arr {
            hashMap[arrnum,default:0] += 1
            
        }
        var hashSet: Set<Int> = []
        for(_,count) in hashMap {
            if hashSet.contains(count) {
                return false
            }else {
                hashSet.insert(count)
            }
        }
        return true
    }
    
    //MARK: 3. Longest Substring Without Repeating Characters
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var list = Array(s)
        var charSet = Set<Character>()
        var l = 0
        var r = 0
        var mv = 0
        for r in 0..<s.count{
            while charSet.contains(list[r]) {
                charSet.remove(list[l])
                l += 1
            }
            charSet.insert(list[r])
            mv = max(mv, r - l + 1)
        }
        return mv
    }
    
    //MARK: - 424. Longest Repeating Character Replacement
    
    func characterReplacement(_ s: String, _ k: Int) -> Int {
            
          var count: [Character: Int] = [:]
            var strArray = Array(s)
            var result = 0
            var l = 0
            var maxF = 0

            for r in 0...s.count - 1 {
                count[strArray[r]] = count[strArray[r], default: 0] + 1
                maxF = max(maxF, count[strArray[r], default: 0])

                while (r - l + 1) - maxF > k {
                    count[strArray[l]] = count[strArray[l], default: 0] - 1
                    l += 1
                }
                result = max(result, r - l + 1)
            }
            return result

        }
    
    
    //MARK: - 20. Valid Parentheses
    
    func isValid(_ s: String) -> Bool {
     
        guard s.count % 2 == 0 else { return false }
        var stack : [Character]  = []
        for ch in s {
            switch ch {
            case "(" : stack.append(")")
            case "{" : stack.append("}")
            case "[" : stack.append("]")
            default:
                if stack.isEmpty || stack.removeLast() != ch {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
    
}









