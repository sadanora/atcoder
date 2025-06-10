-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = getInt >>= print . (`div` 5)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
