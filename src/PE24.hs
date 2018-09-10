module PE24 (go) where

import Data.List (permutations, sort)

go :: [Int] -> Int -> Int
go xs n = intify $ sort (permutations xs) !! (n-1)
  where intify = foldl (\a b -> 10*a+b) 0
