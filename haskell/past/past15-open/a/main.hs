main :: IO ()
main = do
  [a, t] <- getInts
  print $ 5*a+t

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
