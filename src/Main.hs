module Main where

import Data.Map.Lazy (findWithDefault, fromList)
import System.Environment (getArgs)

import qualified PE1 as PE1
import qualified PE2 as PE2
import qualified PE3 as PE3
import qualified PE4 as PE4
import qualified PE5 as PE5

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
                         ]
