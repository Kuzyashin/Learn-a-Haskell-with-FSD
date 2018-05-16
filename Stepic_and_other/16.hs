module Calendar where

    import Prelude (Int, Char, String, Show(..), (++))
    
    -- Дата
    data Date = Date Year Month Day
    
    -- Год
    newtype Year  = Year Int       -- Int это целые числа
    
    -- Месяц
    data Month  = January    | February   | March    | April          
                | May        | June       | July     | August   
                | September  | October    | November | December
    
    newtype Day = Day Int
    
    -- Неделя
    data Week  = Monday     | Tuesday   | Wednesday 
               | Thursday   | Friday    | Saturday     
               | Sunday   
    
    -- Время
    data Time = Time Hour Minute Second
    
    newtype Hour   = Hour   Int    -- Час
    newtype Minute = Minute Int    -- Минута
    newtype Second = Second Int    -- Секунда

    instance Show Week where
        show Monday     = "Mon"
        show Tuesday    = "Tue"
        show Wednesday  = "Wed"
        show Thursday   = "Thu"  
        show Friday     = "Fri" 
        show Saturday   = "Sat"
        show Sunday     = "Sun"

    instance Show Time where
        show (Time h m s) = show h ++ ":" ++ show m ++ ":" ++ show s

    instance Show Hour where
        show (Hour h) = addZero (show h)

    instance Show Minute where
        show (Minute m) = addZero (show m)

    instance Show Second where
        show (Second s) = addZero (show s)

    addZero :: String -> String
    addZero [a] = ['0',a]
    addZero as     = as