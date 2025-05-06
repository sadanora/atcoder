main :: IO ()
main = do
  n <- getInt
  print $ 2*n+3

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
