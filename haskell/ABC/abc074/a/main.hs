import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- getInt
  a <- getInt
  print $ n*n - a

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
