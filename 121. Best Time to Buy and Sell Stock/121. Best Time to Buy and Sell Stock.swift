class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var maxProfit = 0
        var minPrice = prices[0]
        for i  in 1..<prices.count {
            let profit = prices[i] - minPrice
            if profit > maxProfit {
                maxProfit = profit
            }
            minPrice = min(minPrice, prices[i])
        }
        
        return maxProfit
    }
}