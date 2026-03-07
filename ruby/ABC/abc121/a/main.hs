main :: IO ()
main = do


{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
