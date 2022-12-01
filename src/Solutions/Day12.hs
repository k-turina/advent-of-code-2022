{-# LANGUAGE GHC2021 #-}

module Solutions.Day12 (Day12) where

import Day

data Day12

instance Day Day12 where
  sol1, sol2 :: proxy Day12 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2