module PE15 (go) where

import Data.Map.Strict (empty, findWithDefault, insert)

go :: Int -> Int
go n = get (0, 0) $ foldr paths empty [(x, y) | x <- rs, y <- rs]
  where rs = [0..n]
        get k m = findWithDefault 0 k m
        paths p@(x, y) m = if p == (n, n)
                           then insert p 1 m
                           else let a = get (x, y+1) m
                                    b = get (x+1, y) m
                                in insert p (a+b) m
