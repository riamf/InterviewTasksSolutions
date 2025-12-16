import UIKit

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        if nums.isEmpty { return true }
        var goal = nums.count - 1
        
        for i in (0..<nums.count - 1).reversed() {
            let maxJumps = nums[i]
            if i + maxJumps >= goal {  // Jeśli $i + nums[i] >= goal$, oznacza to, że indeks $i$ może dosięgnąć obecnego celu ($goal$).
                goal = i
            }
            
        }
        
        return goal == 0
    }
}

let s = Solution()
let nums = [2,0]
print(s.canJump(nums))
