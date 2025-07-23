-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  s <- getLine
  t <- getLine
  -- print [(c1, c2) | (c1, c2) <- zip s t, c1 /= c2]
  printYn $ (s == t) || solve s t

solve s t =
  case [(i, (c1, c2)) | (i, (c1, c2)) <- zip [0..] (zip s t), c1 /= c2] of
    [(i1, (a, b)), (i2, (c, d))] ->
      abs (i1 - i2) == 1 && a == d && b == c
    _ -> False

{-- IO --}
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
