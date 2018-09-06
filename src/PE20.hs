module PE20 (go) where

import Data.Char (digitToInt)

go :: Integer -> Int
go = sum . digits . fact
  where fact n = product [1..n]
        digits = map digitToInt . show
