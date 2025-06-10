-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  a <- getInt
  b <- getInt
  print $ if (a+b*7) <= 30 then 1 else 0

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
