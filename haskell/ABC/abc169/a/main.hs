main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print (a*b)
