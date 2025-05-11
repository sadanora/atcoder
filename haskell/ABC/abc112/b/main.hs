import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe
import Text.Printf

main :: IO ()
main = do
  [n, t] <- getInts
  arr <- replicateM n (toTuple <$> getInts)
  let filtered = filter (\x -> snd x <= t) arr
  putStrLn $ solve filtered

solve :: [(Int, Int)] -> String
solve x
  | null x = "TLE"
  | otherwise = show $ fst $ minimumBy (comparing fst) x
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)

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
