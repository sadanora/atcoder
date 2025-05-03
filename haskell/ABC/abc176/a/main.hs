main :: IO ()
main = do
  [n, x, t] <- getInts
  let a = n `divMod` x
  print $ if snd a == 0 then fst a * t else (fst a + 1) * t

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
