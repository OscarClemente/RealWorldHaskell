data Tree a = Node a (Tree a) (Tree a)
    | Empty
    deriving (Show)

data MyTree a = MyTree a (Maybe (MyTree a)) (Maybe (MyTree a))
    deriving (Show)