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
  n <- readLn :: IO Double
  [t, a] <- getDoubles
  arr <- getDoubles
  let idxWithDiff = zipWith (\i x -> (i, abs $ a - (t-x*0.006))) [1..] arr
  print $ fst $ minimumBy (comparing snd) idxWithDiff

getDoubles :: IO [Double]
getDoubles = map (read :: String -> Double) . words <$> getLine

getInt :: IO Int
getInt = readLn
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
