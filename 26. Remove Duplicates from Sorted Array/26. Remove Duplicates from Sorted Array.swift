class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        var j = 1
        while j < nums.count {
            i = j - 1
            if nums[i] == nums[j] {
                nums.remove(at: i)
                j -= 1
            }
            j += 1
        }
        return nums.count
    }
}