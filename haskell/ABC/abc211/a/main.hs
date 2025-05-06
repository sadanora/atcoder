main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Float]
  print $ (a-b) / 3 + b

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents
toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
