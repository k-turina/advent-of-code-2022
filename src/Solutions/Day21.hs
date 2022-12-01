{-# LANGUAGE GHC2021 #-}

module Solutions.Day21 (Day21) where

import Day

data Day21

instance Day Day21 where
  sol1, sol2 :: proxy Day21 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2