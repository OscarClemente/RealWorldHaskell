countList :: [a] -> Int
countList (x:xs) = 1 + countList xs
countList [] = 0