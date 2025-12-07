class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = 0
        var j = 0
        var tm = m
        
        while i < tm {
            if j < n, nums2[j] < nums1[i] {
                nums1.insert(nums2[j], at: i)
                nums1.popLast()
                tm += 1
                j += 1
            }
            i += 1
        }
        while j < n {
            nums1.insert(nums2[j], at: i)
            nums1.popLast()
            j += 1
            i += 1
        }
    }
}