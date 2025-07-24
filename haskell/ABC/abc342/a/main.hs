-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import Data.List
import Data.Maybe
import qualified Data.Map.Strict as Map

main :: IO ()
main = do
  s <- getLine
  let c = counts s
      i = fst . fromJust . find ((==1) . snd) . Map.toList $ c
  print . (+1) . fromJust . elemIndex i $ s

counts :: Ord a => [a] -> Map.Map a Int
counts = Map.fromListWith (+) . map (, 1)
