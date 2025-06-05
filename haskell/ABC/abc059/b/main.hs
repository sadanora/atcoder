-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  a <- getInteger
  b <- getInteger
  putStrLn $ solve a b

solve :: Integer -> Integer -> String
solve a b
  | a > b = "GREATER"
  | a < b = "LESS"
  | a == b = "EQUAL"
  | otherwise = ""

{-- IO --}
getInteger :: IO Integer
getInteger = read . BS.unpack <$> BS.getLine
