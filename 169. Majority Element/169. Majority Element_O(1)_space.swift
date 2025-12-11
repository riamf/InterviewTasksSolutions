class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let n = nums.count
        let threshold = n / 2
        let sorted = nums.sorted()
        var best = 1
        var currentCount = 1
        var currentValue = sorted[0]
        var bestValue = sorted[0]
        for i in (1..<sorted.count) {
            if currentValue == sorted[i] {
                currentCount += 1
            } else {
                if currentCount > best {
                    best = currentCount
                    bestValue = currentValue
                }
                currentValue = sorted[i]
                currentCount = 1
            }
            print("\(i): currentValue=\(currentValue) currentCount=\(currentCount) bestValue=\(bestValue) best=\(best)")
        }
        
        if currentCount > best {
            best = currentCount
            bestValue = currentValue
        }
        return bestValue
    }
}