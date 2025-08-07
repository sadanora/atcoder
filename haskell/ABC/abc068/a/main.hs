-- stack script --resolver lts-22 --package bytestring --package vector --package containers

main :: IO ()
main = getLine >>= (putStrLn . ("ABC" ++))
