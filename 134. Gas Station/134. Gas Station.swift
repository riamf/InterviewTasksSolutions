import UIKit

class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var maxCounter = 100
        var counter = 0
        var steps = [Int]()
        var currentIndex = 0
        var resultIndex = -1
        
        for i in (0..<gas.count) {
            print("Starting at \(i)")
            var totalGas = 0
            var counter = 0
            var visited = Set<Int>()
            var foundALoop = false
            var currentIndex = i
            while counter < 100, visited.count < gas.count {
                totalGas += gas[currentIndex]
                let firstPossibleIndexs = (0..<gas.count).filter { !visited.contains($0) }
                if !firstPossibleIndexs.isEmpty {
                    let firstPossibleIndex = firstPossibleIndexs.first(where: { $0 > currentIndex }) ?? firstPossibleIndexs.first!
                    let cost = cost[currentIndex]
                    print("Going to \(firstPossibleIndex) with totalGas \(totalGas) cost is \(cost)")
                    if totalGas >= cost {
                        totalGas -= cost
                        currentIndex = firstPossibleIndex
                        visited.insert(firstPossibleIndex)
                        foundALoop = visited.count == gas.count
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
            if foundALoop {
                resultIndex = i
                break
            }
            
        }
        
        return resultIndex
    }
}

let s = Solution()
let gas = [1,2,3,4,5]
let cost = [3,4,5,1,2]

print(s.canCompleteCircuit(gas, cost))
