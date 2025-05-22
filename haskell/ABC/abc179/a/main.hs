import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  putStrLn $ solve s

solve :: [Char] -> [Char]
solve s
  | last s == 's' = s ++ "es"
  | otherwise = s ++ "s"
