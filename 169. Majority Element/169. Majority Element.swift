class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let n = nums.count
        let threshold = n / 2
        var counts = [Int: Int]()
        for num in nums {
            counts[num, default: 0] += 1
            if counts[num]! > threshold {
                return num
            }
        }
        return -1
    }
}