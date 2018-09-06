module PE21 (go) where

import Data.Function.Memoize (memoize)

go :: Int -> Int
go = foldr f 0 . range
  where range n = [1..(n-1)]
        divSum = memoize (\n -> sum [x | x <- [1..(n-1)], n `mod` x == 0])
        f x xs = let a = divSum x
                     b = divSum a
                 in if x /= a && b == x then x + xs else xs
