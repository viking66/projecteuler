module PE12 (go) where

import Data.List (group)
import Data.Numbers.Primes (primeFactors)

go :: Int -> Int
go n = head [x | x <- scanl (+) 1 [2..], divCount x > n]
  where divCount = product . map ((1+) . length) . group . primeFactors
