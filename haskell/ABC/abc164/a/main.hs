import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  [s, w] <- map (read . BS.unpack) . BS.words <$> BS.getLine :: IO [Int]
  putStrLn $ bool "safe" "unsafe" (w >= s)
