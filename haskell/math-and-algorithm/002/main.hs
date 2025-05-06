main :: IO ()
main = do
  x <- getInts
  print $ sum x

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
