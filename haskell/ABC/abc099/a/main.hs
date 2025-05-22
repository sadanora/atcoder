import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  n <- getInt
  putStrLn $ bool "ABD" "ABC" (n <= 999)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
