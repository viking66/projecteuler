module PE2 (go) where

go :: Integer -> (Integer -> Bool) -> Integer
go n f = sum $ filter f $ takeWhile (<=n) fibs
  where fibs = scanl (+) 0 (1:fibs)
