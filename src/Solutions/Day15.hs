{-# LANGUAGE GHC2021 #-}

module Solutions.Day15 (Day15) where

import Day

data Day15

instance Day Day15 where
  sol1, sol2 :: proxy Day15 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2