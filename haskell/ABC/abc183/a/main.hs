import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  x <- read . BS.unpack <$> BS.getLine
  print $ relu x

relu x
  | x >= 0 = x
  | otherwise = 0
