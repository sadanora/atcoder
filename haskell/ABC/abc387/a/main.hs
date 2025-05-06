main :: IO ()
main = do
  [a, b] <- getInts
  print $ (a+b)^2

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
