module PE4 (go) where

go :: Integer -> Integer
go n = maximum [a*b | a <- ns, b <- ns, pal (a*b)]
  where ns = [10^(n-1)..10^n-1]
        pal a = let b = show a in b == reverse b
