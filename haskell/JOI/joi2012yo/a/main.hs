-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  ps <- replicateM 3 getInt
  js <- replicateM 2 getInt
  print $ (minimum ps + minimum js) - 50

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
