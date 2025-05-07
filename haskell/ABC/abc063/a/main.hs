main :: IO ()
main = do
  ab <- getInts
  putStrLn $ solve ab

solve x
  | s >= 10 = "error"
  | otherwise = show s
  where s = sum x

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents
toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
