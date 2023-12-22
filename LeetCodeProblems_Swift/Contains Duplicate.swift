//
//  Contains Duplicate.swift
//  LeetCodeProblems_Swift
//
//  Created by Nagaraju on 22/12/23.
//

//MARK: - 217. Contains Duplicate

import Foundation
class Solution {
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
}
