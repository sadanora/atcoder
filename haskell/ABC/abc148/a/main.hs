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
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ head [ x | x <- [1,2,3], x `notElem` [a,b] ]

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
