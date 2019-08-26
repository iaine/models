-- models.hs
module Main where

import TimeModel

main = do let t = TimeModel 1.0 1.0 1345
          let t1 = TimeModel 2.0 2.0 1456
          let t2 = TimeModel 3.0 3.0 1673
          let ts = [t, t1, t2]
          print(getTimes ts)
          let y = [ topological t3 - 1300 | t3 <- ts]
          print (y)
