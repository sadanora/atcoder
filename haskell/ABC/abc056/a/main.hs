-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}

main :: IO ()
main = do
  [a, b] <- words <$> getLine
  putStrLn $ if a == b then "H" else "D"
