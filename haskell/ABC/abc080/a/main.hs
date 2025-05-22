import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [n, a, b] <- getInts
  print $ min (n*a) b

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
