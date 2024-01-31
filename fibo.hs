fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main = do
  putStrLn "Los primeros 5 números de Fibonacci son:"
  putStrLn $ unlines $ map show [fibonacci i | i <- [0..4]]
