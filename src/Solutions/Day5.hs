{-# LANGUAGE GHC2021 #-}

module Solutions.Day5 (Day5) where

import Day

data Day5

instance Day Day5 where
  sol1, sol2 :: proxy Day5 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2