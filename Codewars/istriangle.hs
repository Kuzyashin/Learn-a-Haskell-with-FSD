isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c    | a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a = True
                    | otherwise = False