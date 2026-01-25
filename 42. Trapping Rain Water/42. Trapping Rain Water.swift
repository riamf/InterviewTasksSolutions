import UIKit


class Solution {
    func trap(_ height: [Int]) -> Int {
        var waterTapped = 0
        for (i, h) in height.enumerated() {
            print("\(i): \(h)")
            var leftMax = h
            var rightMax = h
            for j in (0..<i) {
                if height[j] > leftMax {
                    leftMax = height[j]
                }
            }
            for j in (i+1..<height.count) {
                if height[j] > rightMax {
                    rightMax = height[j]
                }
            }
            
            waterTapped += min(leftMax, rightMax) - h
        }
        return waterTapped
    }
}

let s = Solution()
let height = [0,1,0,2,1,0,1,3,2,1,2,1]
print(s.trap(height))
