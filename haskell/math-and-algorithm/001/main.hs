main :: IO ()
main = do
  n <- readLn :: IO Int
  print $ 5 + n


{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
