-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [x, y] <- BS.words <$> BS.getLine
  putStrLn $ case compare x y of
    LT -> "<"
    EQ -> "="
    GT -> ">"
