import Foundation

class RandomizedSet {
    
    var dataSet: Array<Int?>
    var indexMap: [Int: Int]

    init() {
        dataSet = Array<Int?>()
        indexMap = [Int: Int]()
    }
    
    func insert(_ val: Int) -> Bool {
        if let result = indexMap[val] {
            return false
        }
        
        dataSet.append(val)
        indexMap[val] = dataSet.count - 1
        
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        if let indexVal = indexMap[val] {
            let lastVal = dataSet.last!!
            dataSet[indexVal] = lastVal
            indexMap[lastVal] = indexVal
            dataSet.removeLast()
            indexMap.removeValue(forKey: val)
            return true
        } else {
            return false
        }
    }
    
    func getRandom() -> Int {
        dataSet.randomElement()!!
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
