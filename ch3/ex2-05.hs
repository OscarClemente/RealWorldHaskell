isPalindrome xs = xs == reverse xs

-- So "12321" will fail, because when the list is just "3" it still matches
-- with (x:xs) as a ("3":[]) which I didn't expect. That must we must do some
-- check to avoid that case...
isPalindrome2 (x:xs) = if length xs > 0
                       then (x == (last xs)) && (isPalindrome2 (init xs))
                       else True
isPalindrome2 _ = True