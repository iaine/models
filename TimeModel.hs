module Models
( TimeModel
)

-- |The TimeModel is based on Yuk Hui's definitions in his book on Digital Objects
data TimeModel = TimeModel { mechanical :: Float,
    clock :: Float,  
    topological :: Int
    } deriving (Show)

getOffset :: TimeModel -> Int -> Int
getOffset tm start = topological tm - start

getTimes :: [TimeModel] -> [(Int, Float)]
[TimeModel] ts = [(mechanical t, topological t) | t <- ts ]

getTimesOffset :: [TimeModel] -> [(Int, Float)]
[TimeModel] ts = [(mechanical t, topological t, topological t - start) | t <- ts ]
