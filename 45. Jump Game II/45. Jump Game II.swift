class Solution {
    func jump(_ nums: [Int]) -> Int {
        if nums.count <= 1 { return 0 }
        var jumps = 0
        var currentEnd = 0
        var farthest = 0
        
        for i in 0..<nums.count - 1 {
            farthest = max(farthest, i + nums[i])
            if i == currentEnd {
                jumps += 1
                currentEnd = farthest
                if currentEnd >= nums.count - 1 {
                    break
                }
            }
        }
        
        return jumps
    }
}
let nums = [2,3,1,1,4]
let s = Solution()
print(s.jump(nums))


