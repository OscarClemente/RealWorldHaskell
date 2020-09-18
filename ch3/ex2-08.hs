data Tree a = Node a (Tree a) (Tree a)
    | Empty
    deriving (Show)

treeHeight (Node _ left right) = 1 + maximum([treeHeight left, treeHeight right])
treeHeight Empty = 0

treeHeight2 (Node _ l r)
    | treeHeight2 l > treeHeight2 r = 1 + treeHeight2 l
    | otherwise = 1 + treeHeight2 r