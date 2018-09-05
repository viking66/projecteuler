module PE14 (go) where

import Data.List (foldl')
import Data.Map.Strict (findWithDefault, foldlWithKey', fromList, insert, member)

go :: Int -> Int
go n = snd $ foldlWithKey' chainMax (0, 0) $ foldl' collatz (fromList [(1,0)]) [1..n]
  where collatz m x
          | member x m = m
          | otherwise  = let x' = if even x then x `div` 2 else 3*x + 1
                             m' = collatz m x'
                             y  = findWithDefault 0 x' m'
                         in insert x (y+1) m'
        chainMax p@(a, _) k b
          | k >= n    = p
          | b > a     = (b, k)
          | otherwise = p
