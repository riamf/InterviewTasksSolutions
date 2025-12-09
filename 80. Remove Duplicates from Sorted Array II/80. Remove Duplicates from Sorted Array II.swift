class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var k = 1
        var occurrences = 0
        
        for i in 1..<nums.count {
            if nums[k-1] != nums[i] {
                nums[k] = nums[i]
                k += 1
                occurrences = 0
            } else if nums[k-1] == nums[i], occurrences < 1 {
                k += 1
                occurrences += 1
            }
        }
        
        return k
    }
}