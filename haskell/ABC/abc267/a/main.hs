import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  s <- getLine
  let wdays = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday" ]
  print $ maybe 0 (5 -) $ elemIndex s wdays

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
