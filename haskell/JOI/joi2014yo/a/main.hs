-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  xs <- replicateM 5 getInt
  print . (`div` 5). sum . map (`max` 40) $ xs

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
