import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  _ <- BS.getLine
  s <- BS.unpack <$> BS.getLine
  t <- BS.unpack <$> BS.getLine
  printYn $ all equal2 (zip s t)

equal2 :: (Char, Char) -> Bool
equal2 ('l', '1') = True
equal2 ('1', 'l') = True
equal2 ('0', 'o') = True
equal2 ('o', '0') = True
equal2 (x, y) = x == y

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
