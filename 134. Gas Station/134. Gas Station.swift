import UIKit

class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var maxCounter = 100
        var counter = 0
        var steps = [Int]()
        var currentIndex = 0
        var posibilitiesMap = [Int: Int]()
        
        for i in 0..<gas.count {
            let g = gas[i]
            var pos = [Int]()

            if i < cost.count-1, g >= cost[i + 1] {
                posibilitiesMap[i] = i + 1
            } else if i == cost.count - 1 {
                if g >= cost[0] {
                    posibilitiesMap[i] = 0
                }
            } else {
                posibilitiesMap[i] = -1
            }
        }
        
        for (si, value) in posibilitiesMap where value != -1 {
            print("Start at index \(si)")
            var canBeCompleted = false
            
            var counter = 0
            var tank = gas[si]
            var ci = si
            var visitedIndices = Set<Int>()
            visitedIndices.insert(ci)
            while counter < 100 || visitedIndices.count == gas.count {
                let nextCI = ci + 1
                
                
                visitedIndices.insert(ci)
                if visitedIndices.count == gas.count {
                    canBeCompleted = true
                    break
                }
                counter += 1
            }
            
        }
        
        print(posibilitiesMap)
        return -1
    }
}

let s = Solution()
let gas = [1,2,3,4,5]
let cost = [3,4,5,1,2]

print(s.canCompleteCircuit(gas, cost))
