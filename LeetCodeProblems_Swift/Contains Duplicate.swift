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
        
        var sArr = Array(s)
        var tArr = Array(t)
        
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
   
}









