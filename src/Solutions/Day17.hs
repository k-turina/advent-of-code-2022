{-# LANGUAGE GHC2021 #-}

module Solutions.Day17 (Day17) where

import Day

data Day17

instance Day Day17 where
  sol1, sol2 :: proxy Day17 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2