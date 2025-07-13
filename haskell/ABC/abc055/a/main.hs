-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- getInt
  print $ n * 800 - (n `div` 15 * 200)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
