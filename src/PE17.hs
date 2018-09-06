module PE17 (go) where

go :: Int -> Int
go n = length $ filter (/=' ') $ concat $ take n thousand
  where
    ten = ["ten"]
    tens = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    prefix2 = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    ies = [s ++ t | s <- prefix2, t <- ("" : tens)]
    ninenine = tens ++ ten ++ teens ++ ies
    prefix3 = map (++ "hundred") tens
    hundreds = [s ++ t | s <- prefix3, t <- ("" : (map ("and"++) ninenine))]
    thousand = ninenine ++ hundreds ++ ["onethousand"]
