import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = prices[0]
        for i in 1..<prices.count {
            let priceToday = prices[i]
            let priceYesterday = prices[i-1]
            if priceToday > priceYesterday {
                let profitForThisStep = priceToday - priceYesterday
                maxProfit += profitForThisStep
            }
            
            minPrice += min(minPrice, prices[i])
        }
        
        return maxProfit
    }
    
}

let s = Solution()
let prices = [7,1,5,3,6,4]
print(s.maxProfit(prices))
