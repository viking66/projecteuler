module PE10 (go) where

import Data.Numbers.Primes (primes)

go :: Integral a => a -> a
go n = sum $ takeWhile (<n) primes
