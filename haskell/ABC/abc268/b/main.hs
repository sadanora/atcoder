-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  s <- BS.getLine
  t <- BS.getLine
  printYn $ solve s t

solve x y
  | lx <= ly = x == BS.take lx y
  | otherwise = False
  where lx = BS.length x
        ly = BS.length y

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
