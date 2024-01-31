fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main = do
  putStrLn "Los primeros 5 números de Fibonacci son:"
  for i in [0..4] do
    putStrLn $ show $ fibonacci i