-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- getLine
  let (mi, ma) = solve s
  putStrLn mi
  putStrLn ma

solve s = (minimum ss, maximum ss)
  where ss = shifts s
shifts s = take (length s) $ iterate (\x -> tail x ++ [head x]) s
