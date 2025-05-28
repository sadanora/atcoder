{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  k <- getInt
  _ <- getInt
  listA <- getInts
  _ <- getInt
  listB <- getInts
  print . length . filter (\(a, b) -> a + k == b) $ [(a, b) | a <- listA, b <- listB]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
