import Foundation

class RandomizedSet {
    
    var dataSet: Array<Int?>

    init() {
        dataSet = Array<Int?>(repeating: nil, count: NSDecimalNumber(decimal:pow(2,31)*2).intValue)
    }
    
    func insert(_ val: Int) -> Bool {
        let result = dataSet[val] == nil
        dataSet[val] = val
        return result
    }
    
    func remove(_ val: Int) -> Bool {
        let result = dataSet[val] != nil
        dataSet[val] = nil
        return result
    }
    
    func getRandom() -> Int {
        
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
