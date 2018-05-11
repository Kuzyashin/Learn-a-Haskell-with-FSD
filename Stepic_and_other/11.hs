integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = integ f a b 1000 where
    integ f a b 0 = 0
    integ f a b n = h * (f a + f (a + h)) / 2 + integ f (a + h) b (n - 1) where h = (b - a) / n