import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  a <- read . BS.unpack <$> BS.getLine :: IO Int
  s <- BS.unpack <$> BS.getLine
  putStrLn $ if a >= 3200 then s else "red"
