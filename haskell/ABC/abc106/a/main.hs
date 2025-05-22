import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [a, b] <- getInts
  print $ (a*b) - (a+b-1)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
