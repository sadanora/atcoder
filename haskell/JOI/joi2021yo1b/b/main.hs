-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  n <- getInt
  s <- BS.unpack <$> BS.getLine
  printYn $ elem "IOI" $ combinations3 s

combinations3 xs = [[x, y, z] | (x:ys) <- tails xs
                              , (y:zs) <- tails ys
                              , z <- zs]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
