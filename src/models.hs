-- models.hs
module Main where

import TimeModel

main = do let t = TimeModel 1.0 1 1345
          let t1 = TimeModel 2.0 2 1456
          let t2 = TimeModel 3.0 3 1673
          let ts = [t, t1, t2]
          print(getTimes ts)
          let y = [ topological t3 - 1300 | t3 <- ts]
          print (y)
          let times = [1341, 1675, 1642, 1588]
          print(times)
          let times1 = createTimes times
          print (getTimes times1)
          let times2 = createTimesOffset times
          print (getTimes times2)
          let otherClock = [15848430000, 12994900000, 1694945660000]
          print ("Machine times")
          print (otherClock)
          let alterOther = alterTime otherClock
          print (alterOther)
          let times3 = createTimes alterOther
          print (times3)
