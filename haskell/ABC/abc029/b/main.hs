-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  ss <- replicateM 12 BS.getLine
  print . length . filter (\s -> 'r' `BS.elem` s) $ ss
