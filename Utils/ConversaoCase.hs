module Utils.ConversaoCase (stringToLower) where
-- Verifica se o char é minusculo
isLower :: Char -> Bool
isLower c = c >= 'a' && c <='z'


-- Converte para minusculo
toLower :: Char -> Char
toLower c = toEnum (fromEnum c + 32)

-- Funcao que utiliza das auxiliares para converter
ensureLowerCase :: Char->Char
ensureLowerCase c
    | isLower c = c
    | c >= 'A' && c <= 'Z' = toLower c
    | otherwise = c


-- Convertendo toda a string
stringToLower :: [Char] -> [Char]
stringToLower [] = []
stringToLower (x:xs) = ensureLowerCase x : stringToLower xs


