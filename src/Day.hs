module Day(Day, sol1, sol2) where

class Day a where
  sol1, sol2 :: proxy a -> String -> Int