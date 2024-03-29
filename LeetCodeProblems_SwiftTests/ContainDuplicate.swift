//
//  ContainDuplicate.swift
//  LeetCodeProblems_SwiftTests
//
//  Created by Nagaraju on 22/12/23.
//

import XCTest
@testable import LeetCodeProblems_Swift

final class ContainDuplicate: XCTestCase {

    let solution = Solution()
    
    func test_ContainDuplicate() {
        
        XCTAssertTrue(solution.containsDuplicate([1, 4, 6, 8, 3, 4, 1]),"Expected true for array with duplicate elements")
       
        XCTAssertFalse(solution.containsDuplicate([]),"Expected false for an empty array")
        
        XCTAssertTrue(solution.containsDuplicate([1,2,3,1]),"Expected false for array with duplicate elements")
        
        XCTAssertTrue(solution.containsDuplicate([-1,2,3,-1]),"Expected true with Negative for array with duplicate elements")
        
    }
    
    
    func test_Agaram(){
    
        XCTAssertTrue(solution.isAnagram("agaram", "agaram"), "Expected True for agram values")
        XCTAssertFalse(solution.isAnagram("agaram", "agaras"), "Expected false for agram values")
        XCTAssertTrue(solution.isAnagram("", ""), "Epected Result is empty")
    }
    
    func test_TwoSum() {
        
        XCTAssertEqual(solution.twoSum([2,7,9,11], 9),[0,1])
        XCTAssertEqual(solution.twoSum([2,5,9,11], 9),[])
        XCTAssertEqual(solution.twoSum([1, 2, 3, 4, 5], 5),[1,2])
        
        
    }
    
    func test_GroupAnagram() {
        XCTAssertEqual(solution.groupAnagrams(["eat","tea","tan","ate","nat","bat"]),[["bat"],["eat","tea","ate"],["tan","nat"]])
        XCTAssertEqual(solution.groupAnagrams([""]),[[""]])
        XCTAssertEqual(solution.groupAnagrams(["a"]),[["a"]])
        
    }
    
    func test_topKFrequent() {
        XCTAssertEqual(solution.topKFrequent([1,1,1,2,2,3],2),[1,2])
        XCTAssertEqual(solution.topKFrequent([1],1),[1])
    }
    
    func test_productExceptSelf() {
        XCTAssertEqual(solution.productExceptSelf([1,2,3,4]),[24,12,8,6])
        XCTAssertEqual(solution.productExceptSelf([-1,1,0,-3,3]),[0,0,9,0,0])
    }
   
    func test_longestConsecutive() {
        XCTAssertEqual(solution.longestConsecutive([100,4,200,1,3,2]),4)
        XCTAssertEqual(solution.longestConsecutive([0,3,7,2,5,8,4,6,0,1]),9)
    }
    func test_isPalindrome() {
        XCTAssertEqual(solution.isPalindrome("A man, a plan, a canal: Panama"),true)
        XCTAssertEqual(solution.isPalindrome("race a car"),false)
        XCTAssertEqual(solution.isPalindrome(" "),true)
    }
    
    func test_TwoSumArrayIsSorted() {
        XCTAssertEqual(solution.twoSums([2,7,11,15],9),[1,2])
       
    }
    
    func test_arrayPairSum() {
        XCTAssertEqual(solution.arrayPairSum([1,4,3,2]),4)
        XCTAssertEqual(solution.arrayPairSum([6,2,6,5,1,2]),9)
        XCTAssertEqual(solution.arrayPairSum([]),0)
       
    }
    
    func test_LengthOfLongestSubstring() {
           let input = "abcabcbb"
           let expectedOutput = 3
        XCTAssertEqual(solution.lengthOfLongestSubstring(input), expectedOutput, "The length of the longest substring should be 3 for input 'abcabcbb'")
       }

}
