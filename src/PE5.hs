module PE5 (go) where

import Data.Map.Strict (empty, foldrWithKey, insert)
import Data.Numbers.Primes (primeFactors)

go :: Integer -> Integer
go n = g $ foldl f empty [2..n]
  where f m x = f' (primeFactors x) m
        f' [] m = m
        f' xss@(x:xs) m = if all (==x) xs then insert x (length xss) m else m
        g = foldrWithKey (\k a b -> k^a * b) 1
