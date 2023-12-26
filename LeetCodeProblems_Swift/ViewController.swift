//
//  ViewController.swift
//  LeetCodeProblems_Swift
//
//  Created by Nagaraju on 22/12/23.
//

import UIKit


class ViewController: UIViewController {

    let solution = Solution()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let result = solution.twoSum([2,8,11,15], 9)
        print(result)
        
        
    }


}

