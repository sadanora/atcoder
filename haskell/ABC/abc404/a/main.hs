-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import Data.List
import Data.Maybe

main :: IO ()
main = do
  s <- getLine
  putStrLn [fromJust $ find (`notElem` s) ['a'..'z']]
