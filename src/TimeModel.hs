module TimeModel where

-- |The TimeModel is based on Yuk Hui's definitions in his book on Digital Objects
data TimeModel = TimeModel { mechanical :: Float,
    clock :: Int,  
    topological :: Int
    } deriving (Show)

getOffset :: TimeModel -> Int -> Int
getOffset tm start = topological tm - start

getTimes :: [TimeModel] -> [(Float, Int, Int)]
getTimes tms = [(mechanical t, clock t, topological t) | t <- tms ]

createTimes :: [Int] -> [(TimeModel)]
createTimes is = [TimeModel 1.0 k i | i <- is, let k=head [1..3]]

createTimesOffset :: [Int] -> [(TimeModel)]
createTimesOffset is = [TimeModel 1.0 k j | i <- is, let k=head [1..3], let j = i-1300]

alterTime ::  [Int]  -> [Int]
alterTime as = [y | a <- as, let y = round(fromIntegral a / 1000000)]
