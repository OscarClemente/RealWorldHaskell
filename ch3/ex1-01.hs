data List a = Cons a (List a)
    | Nil
    deriving (Show)

-- I don't know why this example from the book
-- is named fromList, when it converts into
-- a List datatype.
fromList :: [a] -> (List a)
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

toList :: (List a) -> [a]
toList (Cons x xs)  = x : toList(xs)
toList Nil          = []