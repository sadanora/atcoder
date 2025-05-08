import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  [a, b] <- getContentsToInt
  print $ solve a b

solve :: (Ord a1, Num a2) => a1 -> a1 -> a2
solve a b
  | a < b = -1
  | a == b = 0
  | a > b = 1
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
