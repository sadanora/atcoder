main :: IO ()
main = do
  [k, x] <- getInts
  putStrLn $ if 500*k >= x then "Yes" else "No"

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents
toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
