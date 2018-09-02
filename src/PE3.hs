module PE3 (go) where

import Data.Numbers.Primes

go :: Integer -> Integer
go = maximum . primeFactors
