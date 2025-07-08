-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import Data.Bool (bool)
import Data.Maybe
import qualified Data.Map.Strict as Map

main :: IO ()
main = do
  s <- getLine
  printYn $ length s == Map.size (counts s)

{-- IO --}
yn :: Bool -> String
yn = bool "no" "yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
counts :: Ord a => [a] -> Map.Map a Int
counts = Map.fromListWith (+) . map (, 1)
