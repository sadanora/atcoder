import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  arr <- getInts
  print $ bool 0 1 (sum arr == 0)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
