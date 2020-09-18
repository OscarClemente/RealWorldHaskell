joinWithSeparator (x:xs) separator = if length xs > 0 
                                     then x ++ [separator] ++ (joinWithSeparator xs separator)
                                     else x ++ []