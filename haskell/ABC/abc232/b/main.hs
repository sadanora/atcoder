-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import Data.Char

main :: IO ()
main = do
  s <- getLine
  t <- getLine
  let diffs = [ (ord tc - ord sc) `mod` 26 | (sc, tc) <- zip s t ]
  putStrLn $ if all (== head diffs) diffs then "Yes" else "No"
