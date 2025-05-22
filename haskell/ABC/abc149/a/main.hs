import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [s, t] <- map BS.unpack . BS.words <$> BS.getLine
  putStrLn $ t ++ s
