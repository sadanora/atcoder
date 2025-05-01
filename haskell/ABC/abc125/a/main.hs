main :: IO()
main = do
  [a, b, t] <- getInts
  print $ (t `div` a) * b

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
