-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}

main :: IO ()
main = do
  s <- getLine
  let n = length s
  print $ maximum $ [solve (take (r - l + 1) (drop l s)) |
                      l <- [0 .. n - 1], r <- [l .. n - 1]]

solve s
  | s == reverse s = length s
  | otherwise = 0
