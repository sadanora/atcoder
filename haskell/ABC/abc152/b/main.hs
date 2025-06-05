-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [a, b] <- map BS.unpack . BS.words <$> BS.getLine
  let ai = read a :: Int
      bi = read b :: Int
  putStrLn $ min (replicate bi (head a)) (replicate ai (head b))
