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

}
