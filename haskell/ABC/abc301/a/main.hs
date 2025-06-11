-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  _ <- getInt
  s <- BS.unpack <$> BS.getLine
  let c = counts s
  putStrLn $ case c of
    [(a, _)]       -> [a]
    [(a, x), (b, y)]
      | x > y      -> [a]
      | x < y      -> [b]
      | otherwise  -> [swap $ last s]

counts :: Ord a => [a] -> [(a, Int)]
counts = map count . group . sort
  where count xs = (head xs, length xs)

swap :: Char -> Char
swap 'A' = 'T'
swap 'T' = 'A'

getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
