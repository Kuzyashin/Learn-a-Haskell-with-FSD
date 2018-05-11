sumncount :: Integer -> (Integer, Integer)
sumncount x = (sumd x', count x') where
    x' = abs x

    count :: Integer -> Integer
    count x = length' $ show x

    sumd :: Integer -> Integer
    sumd 0 = 0
    sumd x = mod x 10 + sumd (div x 10)

    length' :: [a] -> Integer
    length' [] = 0
    length' (x:xs) = 1 + length' xs