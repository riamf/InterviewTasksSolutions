class Solution {
    let maxDecimal = NSDecimalNumber(decimal: Decimal(pow(2, 31)))
    let minDecimal = NSDecimalNumber(decimal: Decimal(-1 * pow(2, 31)))
    
    func myAtoi(_ s: String) -> Int {
        // ignore whitespace
        var stringNumber = ""
        var sign = "" //assuming positivity
        var numberCount = 0
        for c in Array(s) {
            if sign.isEmpty, c == " ", numberCount == 0 {
                continue
            }
            if sign.isEmpty && (c == "+" || c == "-") && numberCount == 0 {
                sign = "\(c)"
                continue
            }

            if c >= "0", c <= "9" {
                 numberCount += 1
                 stringNumber += "\(c)"
            } else {
                break
            }
        }

        if stringNumber.count > 0 {
            let decimalResult = NSDecimalNumber(string: sign + stringNumber)
            if sign == "-" && (decimalResult.compare(minDecimal) == .orderedAscending){
                return minDecimal.intValue
            } else if decimalResult.compare(maxDecimal) == .orderedDescending || decimalResult.compare(maxDecimal) == .orderedSame {
                return maxDecimal.intValue - 1
            } else {
                return decimalResult.intValue
            }
        } else {
            return 0
        }
    }
}
