isPalindrome xs = xs == reverse xs

isPalindrome2 (x:xs) = (x == (last xs)) && (isPalindrome2 (init xs))
isPalindrome2 _ = True