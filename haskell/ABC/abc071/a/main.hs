import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Maybe
import Text.Printf

main :: IO ()
main = do
  [x,a,b] <- getInts
  putStrLn $ solve x a b

solve :: (Ord a, Num a) => a -> a -> a -> String
solve x a b
  | da > db = "B"
  | otherwise = "A"
  where da = abs (x-a)
        db = abs (x-b)
{-- IO --}
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
