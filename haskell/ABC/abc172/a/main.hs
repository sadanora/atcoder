main :: IO ()
main = do
  a <- getInt
  print $ sum $ (^) <$> [a] <*> [1,2,3]

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
