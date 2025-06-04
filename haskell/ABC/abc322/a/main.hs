-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  _ <- getInt
  s <- getLine
  print $ maybe (-1) (+1) $ findIndex ("ABC" `isPrefixOf`) (tails s)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
