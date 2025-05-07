import Data.Bool (bool)
import Data.List
import Text.Printf (printf)

main :: IO ()
main = do
  n <- getInt
  let m = if n >= 42 then n+1 else n
  printf "AGC%03d\n" m

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
