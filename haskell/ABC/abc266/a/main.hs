-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- BS.getLine
  let l = BS.length s `div` 2
  BS.putStrLn . BS.take 1 . BS.drop l $ s
