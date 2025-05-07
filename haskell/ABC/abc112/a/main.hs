{-# LANGUAGE BlockArguments #-}
main :: IO ()
main = do
  arr <- getContentsToInt
  putStrLn if head arr == 1 then "Hello World" else show $ sum (tail arr)

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents
toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
