module PE23 (go) where

import Util (properDivisors)

import Data.List (reverse)

hasPairSum :: (Ord a, Num a) => [a] -> a -> Bool
hasPairSum as a = hasPairSum' a as (reverse as)
  where hasPairSum' b (x:xs) (y:ys)
          | y < x     = False
          | x + y < b = hasPairSum' b xs (y:ys)
          | x + y > b = hasPairSum' b (x:xs) ys
          | otherwise = True
        hasPairSum' _ _ _ = False


go :: Int -> Int
go n = sum $ filter notAbundantSum [1..n]
  where abundants = filter (\m -> (>m) $ sum $ properDivisors m) [1..n]
        notAbundantSum = not . hasPairSum abundants
