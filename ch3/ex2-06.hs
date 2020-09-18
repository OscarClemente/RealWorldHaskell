import Data.List (sortBy)

orderByLength a b
    | (length a) > (length b) = GT
    | otherwise = LT

orderSubLists x = sortBy orderByLength x