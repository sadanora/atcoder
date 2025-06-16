main :: IO ()
main = do
  n <- readLn :: IO Int
  putStrLn $ take 1 [ x | x <- [1..n], sum [1..x] >= n ]


{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
