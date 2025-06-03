-- stack script --resolver lts-22 --package bytestring --package vector --package split
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import Data.List.Split (splitOn)

main :: IO ()
main = do
  s <- getLine
  let t = Data.List.Split.splitOn "|" s
  putStrLn $ head t ++ last t
