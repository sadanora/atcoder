main :: IO ()
main = do
  x <- getInt
  print $ 24*x

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
