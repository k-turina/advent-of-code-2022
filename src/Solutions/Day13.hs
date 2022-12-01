{-# LANGUAGE GHC2021 #-}

module Solutions.Day13 (Day13) where

import Day

data Day13

instance Day Day13 where
  sol1, sol2 :: proxy Day13 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2