import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  putStrLn $ head s : "UPC"
