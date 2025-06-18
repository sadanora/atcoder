-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- read . BS.unpack <$> BS.getLine :: IO Double
  putStrLn . solve . floor . (*1.08) $ n

solve x
  | x == 206 = "so-so"
  | x < 206 = "Yay!"
  | x > 206 = ":("
