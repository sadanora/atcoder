import Data.Bool (bool)
import Data.Char
import Data.List

main :: IO ()
main = do
  s <- getLine
  [a, b] <- getInts
  let c = s!!(a-1)
  let d = s!!(b-1)
  putStrLn $ take (a-1) s ++ [s!!(b-1)] ++ drop a (take (b-1) s) ++ [s!!(a-1)] ++ drop b s

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
