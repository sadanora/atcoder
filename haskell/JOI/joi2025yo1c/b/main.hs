-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  a <- getInt
  b <- getInt
  c <- getInt
  print $ if sum [a, b, c] <= 21 then 1 else 0

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
