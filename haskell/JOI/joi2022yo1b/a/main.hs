main :: IO ()
main = do
  x <- getInt
  print $ x^3

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
