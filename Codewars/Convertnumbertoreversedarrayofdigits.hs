import Data.Char
digitize :: Int -> [Int]
digitize s = reverse $ map digitToInt $ show s