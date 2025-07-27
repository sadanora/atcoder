-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import Control.Monad
main :: IO ()
main = do
  s <- getLine
  let l = length s
      ans = length [()
                    | i <- [0..l-3]
                    , d <- [1..(l-1) `div` 2]
                    , let j = i + d
                    , let k = j + d
                    , k < l
                    , s!!i == 'A', s!!j == 'B', s!!k == 'C']
  print ans
