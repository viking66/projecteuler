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

main :: IO ()
main = getArgs >>= mapM_ (putSolution . read)
  where
    putSolution n = putStrLn $ (show n) ++ ": " ++ findWithDefault unsolved n solutions
    unsolved = "No solution implemented."
    solutions = fromList [ (1, show $ PE1.go 1000)
                         , (2, show $ PE2.go 4000000 even)
                         , (3, show $ PE3.go 600851475143)
                         , (4, show $ PE4.go 3)
                         , (5, show $ PE5.go 20)
                         , (6, show $ PE6.go 100)
                         , (7, show $ PE7.go 10001)
                         , (8, show $ PE8.go 13)
                         , (9, show $ PE9.go 1000)
                         , (10, show $ PE10.go 2000000)
                         , (11, show $ PE11.go 4)
                         , (12, show $ PE12.go 500)
                         , (13, show $ PE13.go 10)
                         , (14, show $ PE14.go 1000000)
                         ]
