-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  n <- getInt
  ss <- replicateM n getLine
  printYn $ any ((\c -> c == reverse c ) . uncurry (++)) (pairs ss)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
pairs xs = [(x, y) | x <- xs, y <- xs, x/= y]
