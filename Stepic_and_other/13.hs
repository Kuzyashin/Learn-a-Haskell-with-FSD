module Demo where

import Data.Function

sumFstFst = (+) `on` helper
    where helper pp = fst $ fst pp

sumFstFst2 = (+) `on` (\pp -> fst . fst pp)