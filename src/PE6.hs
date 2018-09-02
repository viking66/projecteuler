module PE6 (go) where

go :: Integer -> Integer
go n = squareSum - sumSquare
  where sumSquare = sum $ map (^2) [1..n]
        squareSum = let s = (n * (n+1)) `div` 2 in s^2
