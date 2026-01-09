import UIKit

class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var maxCounter = 100
        var counter = 0
        var steps = [Int]()
        var currentIndex = 0
        
        for i in (0..<gas.count) {
            print("Starting at \(i)")
            var totalGas = gas[i]
            var counter = 0
            var visited = Set<Int>()
            var currentIndex = i
            while counter < 100, visited.count < gas.count {
                let firstPossibleIndexs = (0..<gas.count).filter { !visited.contains($0) }
                if !firstPossibleIndexs.isEmpty {
                    let firstPossibleIndex = firstPossibleIndexs.first(where: { $0 > currentIndex }) ?? firstPossibleIndexs.first!
                    print("Going to \(firstPossibleIndex) with totalGas \(totalGas)")
                    let cost = cost[firstPossibleIndex]
                    if totalGas >= cost {
                        totalGas -= cost
                        currentIndex = firstPossibleIndex
                        visited.insert(firstPossibleIndex)
                    } else {
                        // this index is not possible
                        print("Cannot proceed to \(firstPossibleIndex) with totalGas \(totalGas) cost is \(cost)")
                        break
                    }
                } else {
                    print("All has been visited")
                    break
                }
                
                counter += 1
            }
            
        }
        
        return -1
    }
}

let s = Solution()
let gas = [1,2,3,4,5]
let cost = [3,4,5,1,2]

print(s.canCompleteCircuit(gas, cost))
