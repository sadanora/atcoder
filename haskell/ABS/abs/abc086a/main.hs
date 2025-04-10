main :: IO ()
main = do
  [a, b] <- map (read :: String -> Int) . words <$> getLine
  if even (a * b) then putStrLn "Even" else putStrLn "Odd"
