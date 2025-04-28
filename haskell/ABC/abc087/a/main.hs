main :: IO ()
main = do
  x <- readLn :: IO Int
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ (x-a) `mod` b

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
