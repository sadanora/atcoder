import Control.Monad
main :: IO ()
main = do
  n <- readLn
  arr <- replicateM n $ map (read :: String -> Int) . words <$> getLine
  putStrLn $ if analyze ([0,0,0]:arr) then "Yes" else "No"

analyze [a, b] = reachable a b
analyze (a:b:xs) = reachable a b && analyze (b:xs)

reachable [t1, x1, y1] [t2, x2, y2] =
  (dt >= dx + dy) && even (dt - (dx + dy))
  where dx = abs (x2 - x1)
        dy = abs (y2 - y1)
        dt = t2 - t1
