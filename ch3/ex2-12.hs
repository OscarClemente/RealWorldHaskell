import Data.List
import Data.Ord

data Direction = LeftTurn | RightTurn | Straight
    deriving (Eq, Show)

type Point2D = (Double, Double)

calcDirection :: Point2D -> Point2D -> Point2D -> Direction
calcDirection (x1, y1) (x2, y2) (x3, y3) 
    | cross == 0 = Straight
    | cross > 0  = LeftTurn
    | otherwise = RightTurn
    where 
        cross = ((x2 - x1) * (y3 - y1)) - ((y2 - y1) * (x3 - x1))

calcListDirection :: [Point2D] -> [Direction]
calcListDirection (p1:p2:p3:ps) =  (calcDirection p1 p2 p3) : calcListDirection (p2:p3:ps)
calcListDirection _ = []

bottomLeftMost :: [Point2D] -> Point2D
bottomLeftMost [x] = x
bottomLeftMost (x:xs) = getbottomLeftOne x (bottomLeftMost xs)
    where 
        getbottomLeftOne (x1, y1) (x2, y2)
            | (y1 < y2) || (y1 == y2 && x1 < x2) = (x1, y1)
            | otherwise = (x2, y2)

sortOnPolar :: [Point2D] -> [Point2D]
sortOnPolar [] = []
sortOnPolar ps = origin : sortOn polar rest
    where
        polar (x, y) = atan2 (y - y0) (x - x0)
        origin@(x0, y0) = bottomLeftMost ps
        rest = filter (/= origin) ps

grahamScan :: [Point2D] -> [Point2D]
grahamScan [] = []
grahamScan (p : ps) = grahamScan' [p] ps
  where
    grahamScan' xs [] = xs
    grahamScan' xs [y] = y : xs
    grahamScan' xs'@(x : xs) (y : z : ys)
        | calcDirection x y z == LeftTurn = grahamScan' (y : xs') (z : ys)
        | otherwise = grahamScan' xs (x : z : ys)

convex :: [Point2D] -> [Point2D]
convex = grahamScan . sortOnPolar