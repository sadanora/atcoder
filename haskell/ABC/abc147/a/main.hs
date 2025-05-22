import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  arr <- toInt <$> BS.getLine
  putStrLn $ bool "bust" "win" (sum arr <= 21)

{-- IO --}
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
