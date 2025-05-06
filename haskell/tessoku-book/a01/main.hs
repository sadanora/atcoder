main :: IO ()
main = do
  n <- getInt
  print $ n*n

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
