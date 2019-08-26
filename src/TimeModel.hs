module TimeModel where

-- |The TimeModel is based on Yuk Hui's definitions in his book on Digital Objects
data TimeModel = TimeModel { mechanical :: Float,
    clock :: Float,  
    topological :: Int
    } deriving (Show)

getOffset :: TimeModel -> Int -> Int
getOffset tm start = topological tm - start

getTimes :: [TimeModel] -> [(Float, Float, Int)]
getTimes tms = [(mechanical t, clock t, topological t) | t <- tms ]
