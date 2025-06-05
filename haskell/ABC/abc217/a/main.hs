-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [s, t] <- BS.words <$> BS.getLine
  putStrLn $ if min s t == s then "Yes" else "No"
