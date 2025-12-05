class Solution {
    func myAtoi(_ s: String) -> Int {
        // Convert the string to an array of characters for efficient indexing
        let chars = Array(s)
        let n = chars.count
        var index = 0
        
        // 1. Whitespace: Ignore any leading whitespace (" ").
        while index < n && chars[index] == " " {
            index += 1
        }
        
        // 2. Signedness: Determine the sign.
        var sign = 1 // 1 for positive, -1 for negative
        if index < n {
            if chars[index] == "-" {
                sign = -1
                index += 1
            } else if chars[index] == "+" {
                // Sign is already 1, just skip the '+'
                index += 1
            }
        }
        
        // Constants for 32-bit signed integer limits
        let maxInt = Int32.max
        let minInt = Int32.min
        
        var result: Int64 = 0 // Use Int64 to prevent overflow during intermediate calculations
        
        // 3. Conversion: Read the integer.
        while index < n {
            let char = chars[index]
            
            // Check if the current character is a digit
            guard let digit = char.wholeNumberValue else {
                // Stop reading if a non-digit character is encountered
                break
            }
            
            // Apply the digit to the current result (as Int64)
            result = result * 10 + Int64(digit)
            
            // 4. Rounding (Overflow Check)
            // Check for potential overflow *after* applying the current digit.
            
            // If the number is positive and exceeds Int32.max, cap it.
            if sign == 1 && result > Int64(maxInt) {
                return Int(maxInt)
            }
            
            // If the number is negative and its magnitude (result) times -1
            // is less than Int32.min, cap it.
            if sign == -1 && result * -1 < Int64(minInt) {
                return Int(minInt)
            }
            
            index += 1
        }
        
        // Apply the final sign to the result and return as Int
        return Int(result * Int64(sign))
    }
}