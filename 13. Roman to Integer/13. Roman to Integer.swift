import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        let symbolMap = [
            "I":1,
            "V":5,
            "X":10,
            "L":50,
            "C":100,
            "D":500,
            "M":1000
        ]
        
        var result = 0
        var sc = s
        let sa = Array(s)
        var i = 0
        while i < sa.count {
            let str = "\(sa[i])"
            if str == "I", i + 1 < s.count, (sa[i+1] == "X" || sa[i+1] == "V") {
                if sa[i + 1] == "X" {
                    result += 9
                    i += 2
                } else if sa[i + 1] == "V" {
                    result += 4
                    i += 2
                }
            } else if str == "X", i + 1 < s.count, (sa[i+1] == "L" || sa[i+1] == "C") {
                if sa[i + 1] == "L" {
                    result += 40
                    i += 2
                } else if sa[i + 1] == "C" {
                    result += 90
                    i += 2
                }
            } else if str == "C", i + 1 < s.count, (sa[i+1] == "D" || sa[i+1] == "M") {
                if sa[i + 1] == "D" {
                    result += 400
                    i += 2
                } else if sa[i + 1] == "M" {
                    result += 900
                    i += 2
                }
            } else {
                result += symbolMap[str, default: 0]
                i += 1
            }
        }
        
        return result
    }
}


print(Solution().romanToInt("IX"))
