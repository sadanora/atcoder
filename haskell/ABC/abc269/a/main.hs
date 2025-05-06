main :: IO ()
main = do
  [a, b, c, d] <- getInts
  print $ (a+b) * (c-d)
  putStrLn "Takahashi"

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents
toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
