import qualified Data.ByteString.Char8 as BS
main :: IO ()
main = do
  [a] <- map (read . BS.unpack) . BS.words <$> BS.getLine
  let (d, m) = 400 `divMod` a
  print $ if m == 0 then d else -1
