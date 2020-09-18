joinWithSeparator (x:xs) separator = if length xs > 0 
                                     then x ++ [separator] ++ (joinWithSeparator xs separator)
                                     else x ++ []

joinWithSeparator2 (x:[]) separator = x ++ []
joinWithSeparator2 (x:xs) separator = x ++ [separator] ++ (joinWithSeparator2 xs separator)