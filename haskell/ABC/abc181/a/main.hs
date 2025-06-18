-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- getInt
  putStrLn $ if even n then "White" else "Black"

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
