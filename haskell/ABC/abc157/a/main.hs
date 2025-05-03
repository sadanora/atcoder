main :: IO ()
main = do
  [n] <- getInts
  print $ (n+1) `div` 2

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
