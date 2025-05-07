main::IO ()
main = do
    putStrLn "Bem-Vindo à Cifra PoliAlfabética"

    putStrLn "Quantas Chaves deseja gerar?"
    nStr <- getLine
    let n = read nStr :: Int

    putStrLn $ "Gerando " ++ show n ++ " Chaves aleatórias..."
    