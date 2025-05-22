import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  x <- read . BS.unpack <$> BS.getLine :: IO Int
  print $ bool 0 1 (x == 0)
