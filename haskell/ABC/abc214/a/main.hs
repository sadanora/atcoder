import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  n <- getInt
  print $ solve n

solve :: (Ord a1, Num a1, Num a2) => a1 -> a2
solve n
  | n >= 212 = 8
  | n >= 126 = 6
  | otherwise = 4

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
