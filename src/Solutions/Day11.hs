{-# LANGUAGE GHC2021 #-}

module Solutions.Day11 (Day11) where

import Day

data Day11

instance Day Day11 where
  sol1, sol2 :: proxy Day11 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2