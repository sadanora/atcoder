-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  t <- getInt
  print $ f $ f (f t + t) + f (f t)

f x = x^2 + 2*x + 3

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
