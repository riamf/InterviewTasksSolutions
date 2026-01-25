import UIKit


class Solution {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 0 else { return 0 }
        
        var left = 0
        var right = height.count - 1
        var maxL = 0
        var maxP = 0
        var totalWater = 0
        
        while left < right {
            if height[left] < height[right] {
                if height[left] >= maxL {
                    maxL = height[left]
                } else {
                    totalWater += (maxL - height[left])
                }
                left += 1
            } else {
                maxP = max(maxP, height[right])
                totalWater += maxP - height[right]
                right -= 1
            }
        }
        
        return totalWater
    }
}

let s = Solution()
let height = [0,1,0,2,1,0,1,3,2,1,2,1]
print(s.trap(height))
