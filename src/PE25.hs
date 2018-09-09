module PE25 (go) where

go :: Int -> Int
go n = fst $ head $ dropWhile ((< target) . snd) $ zip [0..] fibs
  where fibs = scanl (+) 0 (1:fibs)
        target = 10^(n-1)
