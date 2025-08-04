-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  a <- getInt
  b <- getInt
  print $ a*1000 + b*10000

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
