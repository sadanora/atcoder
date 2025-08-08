-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  s <- getLine
  let bs = ["oxx", "xxo", "xox"]
  printYn $ any (contains s) bs

contains s b = s `isInfixOf` take (length s + 2) (cycle b)

{-- IO --}
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
