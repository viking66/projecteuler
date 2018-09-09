module Util
  ( divisors
  , properDivisors
  ) where

import Control.Arrow (second)
import Data.List (reverse)

divisors :: Integral a => a -> [a]
divisors n = uncurry (++) $ second reverse $ foldr f ([], []) $ range n
  where range = flip take [1..] . floor . sqrt . fromIntegral
        f a p@(xs, ys) = let (d, m) = divMod n a
                       in if m /= 0
                          then p
                          else if a == d
                               then (a:xs, ys)
                               else (a:xs, d:ys)

properDivisors :: Integral a => a -> [a]
properDivisors = init . divisors
