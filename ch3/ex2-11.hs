data Direction = LeftTurn | RightTurn | Straight
    deriving (Show)
data Point2D = Point2D Double Double
    deriving (Eq, Show)

calcDirection :: Point2D -> Point2D -> Point2D -> Direction
calcDirection (Point2D x1 y1) (Point2D x2 y2) (Point2D x3 y3) 
    | cross == 0 = Straight
    | cross > 0  = LeftTurn
    | otherwise = RightTurn
    where cross = ((x2 - x1) * (y3 - y1)) - ((y2 - y1) * (x3 - x1))

calcListDirection :: [Point2D] -> [Direction]
calcListDirection (p1:p2:p3:ps) =  (calcDirection p1 p2 p3) : calcListDirection (p2:p3:ps)
calcListDirection _ = []