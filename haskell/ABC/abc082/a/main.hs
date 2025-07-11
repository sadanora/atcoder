-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [a, b] <- map (read . BS.unpack :: BS.ByteString -> Int) . BS.words <$> BS.getLine
  print $ (a+b+1) `div` 2
