-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  [c, h] <- getInts
  printYn (h >= 2800)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
yn :: Bool -> String
yn = bool "x" "o"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
