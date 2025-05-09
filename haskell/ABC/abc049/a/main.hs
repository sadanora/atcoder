import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  c <- head <$> getLine
  let arr = ['a', 'e', 'i', 'o', 'u']
  putStrLn $ if c `elem` arr then "vowel" else "consonant"

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
