-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import Data.Bool (bool)
import Data.List
import Data.Maybe

main :: IO ()
main = do
  s <- getLine
  let candidates = [take i s | i <- [length s - 1, length s - 2 .. 1]]
  let evenStr = fromJust $ find isEvenString candidates
  print $ length evenStr

isEvenString :: String -> Bool
isEvenString s
  | odd len   = False
  | otherwise = front == back
  where
    len = length s
    half = len `div` 2
    front = take half s
    back  = drop half s
