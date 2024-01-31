-- Función para leer un número de asiento del usuario
leerAsiento :: IO Int
leerAsiento = do
  putStrLn "Introduce el número de asiento:"
  readLn

-- Función para leer el nombre de la persona del usuario
leerNombre :: IO String
leerNombre = do
  putStrLn "Introduce el nombre de la persona:"
  getLine

-- Función para generar una lista combinada de número de asiento y nombres de personas
generarAsientosYnombres :: IO [(Int, String)]
generarAsientosYnombres = do
  putStrLn "Introduce el número total de asientos:"
  numAsientos <- readLn
  nombres <- mapM (\_ -> leerNombre) [1 .. numAsientos] -- Leer nombres de las personas
  return $ zip [1 ..] nombres -- Asignar números de asiento consecutivos

-- Función para imprimir la lista combinada
imprimirAsientosYnombres :: [(Int, String)] -> IO ()
imprimirAsientosYnombres [] = return ()
imprimirAsientosYnombres ((asiento, nombre) : resto) = do
  putStrLn $ show asiento ++ ": " ++ nombre
  imprimirAsientosYnombres resto

-- Función principal
main :: IO ()
main = do
  putStrLn "Generar lista combinada de número de asiento y nombres de personas:"
  asientosYnombres <- generarAsientosYnombres
  putStrLn "\nLista combinada de número de asiento y nombres de personas:"
  imprimirAsientosYnombres asientosYnombres
