import UIKit

class Solution {
    func candy(_ ratings: [Int]) -> Int {
        guard !ratings.isEmpty else { return 0 }
        
        var candies = (0..<ratings.count).map { _ in 1 }
        for i in (1..<ratings.count) {
            if ratings[i] > ratings[i-1] {
                candies[i] = candies[i-1] + 1
            }
        }
        
        for i in (0..<ratings.count - 1).reversed() {
            if ratings[i] > ratings[i+1] {
                candies[i] = max(candies[i], candies[i+1] + 1)
            }
        }
        
        return candies.reduce(0,+)
    }
}

let s = Solution()
//let ratings = [1,0,2]  ans [2,1,2] => 5
let ratings = [1, 2, 5, 4, 3, 2, 1]
print(s.candy(ratings))
