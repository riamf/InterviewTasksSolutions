class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var newArray = [Int]()

        var j = 0
        var i = 0
        while i < m || j < n {
            if i < m, j < n, nums1[i] <= nums2[j] {
                newArray.insert(nums1[i], at:newArray.count)
                i += 1
            }
            if i < m, j < n, nums2[j] <= nums1[i] {
                newArray.insert(nums2[j], at:newArray.count)
                j += 1
            }
            if i >= m, j < n {
                newArray.insert(nums2[j], at:newArray.count)
                j += 1
            }

            if i < m, j >= n {
                newArray.insert(nums1[i], at:newArray.count)
                i += 1
            }
        }
        nums1 = newArray
    }
}