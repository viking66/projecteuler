module PE9 (go) where

go :: Int -> Int
go n = if null xs then 0 else head xs
  where xs = [a*b*c | c <- [1..n], b <- [1..(c-1)], a <- [1..(b-1)], a^2 + b^2 == c^2 && a+b+c == n]
