module PE7 (go) where

import Data.Numbers.Primes (primes)

go :: Int -> Integer
go n = primes !! (n-1)
