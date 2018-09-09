module Main where

import Data.Map.Lazy (findWithDefault, fromList)
import System.Environment (getArgs)

import qualified PE1 as PE1
import qualified PE2 as PE2
import qualified PE3 as PE3
import qualified PE4 as PE4
import qualified PE5 as PE5
import qualified PE6 as PE6
import qualified PE7 as PE7
import qualified PE8 as PE8
import qualified PE9 as PE9
import qualified PE10 as PE10
import qualified PE11 as PE11
import qualified PE12 as PE12
import qualified PE13 as PE13
import qualified PE14 as PE14
import qualified PE15 as PE15
import qualified PE16 as PE16
import qualified PE17 as PE17
import qualified PE18 as PE18
import qualified PE19 as PE19
import qualified PE20 as PE20
import qualified PE21 as PE21
import qualified PE22 as PE22
import qualified PE23 as PE23

data Solution = AnsStr String | AnsStrIO (IO String)

putSolution :: Int -> Solution -> IO ()
putSolution n (AnsStr s) = putStrLn $ (show n) ++ ": " ++ s
putSolution n (AnsStrIO s) = s >>= (putSolution n . AnsStr)

mkAnsStr :: Show a => a -> Solution
mkAnsStr = AnsStr . show

solution :: Show a => a -> Solution
solution = AnsStr . show

solution1 :: Show b => (a -> b) -> a -> Solution
solution1 f = solution . f

solution2 :: Show c => (a -> b -> c) -> a -> b -> Solution
solution2 f = solution1 . f

solutionIO1 :: Show b => (a -> b) -> IO a -> Solution
solutionIO1 f a = AnsStrIO (a >>= (return . show . f))

main :: IO ()
main = getArgs >>= mapM_ (putSolution' . read)
  where
    putSolution' n = putSolution n $ findWithDefault unsolved n solutions
    unsolved = AnsStr "No solution implemented."
    solutions = fromList [ (1, solution1 PE1.go 1000)
                         , (2, solution2 PE2.go 4000000 even)
                         , (3, solution1 PE3.go 600851475143)
                         , (4, solution1 PE4.go 3)
                         , (5, solution1 PE5.go 20)
                         , (6, solution1 PE6.go 100)
                         , (7, solution1 PE7.go 10001)
                         , (8, solution1 PE8.go 13)
                         , (9, solution1 PE9.go 1000)
                         , (10, solution1 PE10.go 2000000)
                         , (11, solution1 PE11.go 4)
                         , (12, solution1 PE12.go 500)
                         , (13, solution1 PE13.go 10)
                         , (14, solution1 PE14.go 1000000)
                         , (15, solution1 PE15.go 20)
                         , (16, solution1 PE16.go 1000)
                         , (17, solution1 PE17.go 1000)
                         , (18, solution PE18.go)
                         , (19, solution PE19.go)
                         , (20, solution1 PE20.go 100)
                         , (21, solution1 PE21.go 10000)
                         , (22, solutionIO1 PE22.go (readFile "share/names.txt"))
                         , (23, solution1 PE23.go 28123)
                         ]
