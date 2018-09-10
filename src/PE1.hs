module PE1 (go) where

go :: Int -> Int
go n = sum [x | x <- [1..(n-1)], x `mod` 3 == 0 || x `mod` 5 == 0]
