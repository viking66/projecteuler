module PE19 (go) where

data Days = Mon | Tue | Wed | Thur | Fri | Sat | Sun
data Months = Jan | Feb | Mar | Apr | May | Jun
            | Jul | Aug | Sep | Oct | Nov | Dec

days = [Mon, Tue, Wed, Thur, Fri, Sat, Sun]
months = [Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec]

numDays Feb y
  | y `mod` 100 == 0 && y `mod` 400 == 0 = 29
  | y `mod` 100 == 0 = 28
  | y `mod` 4 == 0 = 29
  | otherwise = 28
numDays Apr _ = 30
numDays Jun _ = 30
numDays Sep _ = 30
numDays Nov _ = 30
numDays _ _   = 31

go :: Int
go = length $ filter firstSun $ dropWhile (\(y,_,_) -> y < 1901) ys
  where xs = [(y, n) | y <- [1900..2000], m <- months, n <- [1..(numDays m y)]]
        ys = zipWith (\(y, n) d -> (y, n, d)) xs (cycle days)
        firstSun (_, 1, Sun) = True
        firstSun _ = False
