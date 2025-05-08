import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  d <- getInt
  putStrLn $ solve d

solve :: (Eq a, Num a) => a -> String
solve 25 = "Christmas"
solve 24 = "Christmas Eve"
solve 23 = "Christmas Eve Eve"
solve 22 = "Christmas Eve Eve Eve"

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
