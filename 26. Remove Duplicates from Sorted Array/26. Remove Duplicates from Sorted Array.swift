class Solution {

    func removeDuplicatesSlowPointer() {
        guard !nums.isEmpty else { return 0 }
        var k = 1
        for i in 1..<nums.count {
            if nums[i] != nums[k-1] {
                // unique
                nums[k] = nums[i]
                k += 1
            }
        }
        return k
    }
    
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