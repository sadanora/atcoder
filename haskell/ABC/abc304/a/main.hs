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
  n <- getInt
  arr <- replicateM n (words <$> getLine)
  let indexed = zipWith parse [1..] arr
  let (minIdx, _, _) = minimumBy (comparing (\(_, _, a) -> a)) indexed
  let rotated =  rotate (minIdx-1) indexed
  mapM_ (\(_, s, _) -> putStrLn s) rotated

parse :: Int -> [String] -> (Int, String, Int)
parse i [x, y] = (i, x, read y)
rotate :: Int -> [a] -> [a]
rotate i xs = drop i xs ++ take i xs

getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents

toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn

counts :: Ord a => [a] -> [(a, Int)]
counts = map count . group . sort
  where count xs = (head xs, length xs)
