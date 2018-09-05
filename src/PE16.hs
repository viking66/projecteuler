module PE16 (go) where

import Data.Char (digitToInt)

go :: Int -> Int
go = sum . digits . (2^)
  where digits = map digitToInt . show
