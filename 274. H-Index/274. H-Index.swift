import Foundation

class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        let sorted_citations = citations.sorted().reversed()
        var hIndex = 0
        for (i, c) in sorted_citations.enumerated() {
            if i + 1 <= c {
                hIndex = i + 1
            }
        }
        return hIndex
    }
}

let s = Solution()
let citations = [3,0,6,1,5]
//let citations = [1,3,1]
print(s.hIndex(citations))
