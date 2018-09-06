module PE22 (go) where

import Data.Char (ord)
import Data.List (sort)
import Data.List.Split (splitOn)

go :: String -> Int
go = sum . map (uncurry wVal) . zip [1..] . sort . splitOn ","
  where cVal c = (ord c) - (ord 'A') + 1
        wVal i = (i*) . sum . map cVal . filter (/='"')
