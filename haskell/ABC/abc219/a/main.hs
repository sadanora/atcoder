import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  x <- getInt
  putStrLn $ solve x

solve x
  | x >= 90 = "expert"
  | x >= 70 = show $ 90-x
  | x >= 40 = show $ 70-x
  | otherwise = show $ 40-x


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
