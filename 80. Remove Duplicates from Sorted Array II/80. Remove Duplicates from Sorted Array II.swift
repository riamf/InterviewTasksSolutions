class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 2 else {
            return nums.count
        }
        var k = 2
        
        for i in 2..<nums.count {
            if nums[k-2] != nums[i] {
                nums[k] = nums[i]
                k += 1
            }
        }
        
        return k
    }
}