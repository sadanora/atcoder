main :: IO ()
main = do
  [a,b,c] <- getInts
  putStrLn $ if a+b >= c then "Yes" else "No"

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents
toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
