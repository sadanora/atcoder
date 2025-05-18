import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe
import qualified Data.Set as Set
import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  arr <- replicateM n $ map (read :: String -> Int) . words <$> getLine
  printYn $ solve arr

solve xs = any isTriple $ zip3 xs (drop 1 xs) (drop 2 xs)
  where
    isPareEq [di1, di2] = di1 == di2
    isTriple (a, b, c) = all isPareEq [a, b, c]

getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents

toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn

counts :: Ord a => [a] -> [(a, Int)]
counts = map count . group . sort
  where count xs = (head xs, length xs)
