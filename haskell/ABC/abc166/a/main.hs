import qualified Data.ByteString.Char8 as BS
import Data.Bool

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  putStrLn $ bool "ABC" "ARC" (s == "ABC")
