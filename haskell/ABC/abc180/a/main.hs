main :: IO ()
main = do
  [n, a, b] <- getInts
  print $ n-a+b

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
