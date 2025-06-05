-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- BS.getLine
  BS.putStrLn . BS.reverse . BS.map solve $ s

solve :: Char -> Char
solve '6' = '9'
solve '9' = '6'
solve x = x
