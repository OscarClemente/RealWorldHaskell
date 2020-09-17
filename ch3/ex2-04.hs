generatePalindrome x = x ++ reverse x

generatePalindrome2 (x:xs) = x : (generatePalindrome2 xs) ++ [x]
generatePalindrome2 x = x