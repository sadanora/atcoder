import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  [s, t] <- words <$> getLine
  [a, b] <- getInts
  u <- getLine
  putStrLn $ unwords $ [show (if fst x == u then snd x - 1 else snd x) | x <- zip [s, t] [a, b]]

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
