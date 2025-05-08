import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  y <- getInt
  print $ solve y

solve :: (Integral a1, Num a2) => a1 -> a2
solve y = bool 365 366 $ isLeap y
isLeap :: Integral a => a -> Bool
isLeap y = y `mod` 400 == 0 || (y `mod` 4 == 0 && y `mod` 100 /= 0)

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
