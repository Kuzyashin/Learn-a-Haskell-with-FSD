module Demo where
    import Prelude

    data HowMany = Little | Enough | Many
        deriving Show

    hallCapacity :: Int -> HowMany
    hallCapacity n
        | n < 10    = Little
        | n < 30    = Enough
        | otherwise = Many