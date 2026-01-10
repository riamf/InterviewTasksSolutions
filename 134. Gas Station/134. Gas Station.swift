import UIKit

class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalSurplus = 0 // Bilans paliwa na całej trasie
        var currentTank = 0  // Paliwo w baku od ostatniego resetu startu
        var startingIndex = 0
        
        for i in 0..<gas.count {
            let diff = gas[i] - cost[i]
            totalSurplus += diff
            currentTank += diff
            
            // Jeśli zabrakło paliwa, by dojechać do następnej stacji
            if currentTank < 0 {
                // Resetujemy: następna stacja to potencjalny nowy start
                startingIndex = i + 1
                currentTank = 0
            }
        }
        
        // Jeśli ogólny bilans jest ujemny, nie da się przejechać trasy
        return totalSurplus >= 0 ? startingIndex : -1
    }
}

let s = Solution()
let gas = [1,2,3,4,5]
let cost = [3,4,5,1,2]

print(s.canCompleteCircuit(gas, cost))
