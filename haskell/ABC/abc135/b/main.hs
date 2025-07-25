-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  n <- getInt
  ps <- getInts
  printYn . solve $ ps

solve ps
  | diff == 0 || diff == 2 = True
  | otherwise = False
  where
    diff = sum [1 | (a, b) <- zip ps (sort ps), a /= b]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
yn :: Bool -> String
yn = bool "NO" "YES"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
