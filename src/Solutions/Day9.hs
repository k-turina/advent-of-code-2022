{-# LANGUAGE GHC2021 #-}

module Solutions.Day9 (Day9) where

import Day

data Day9

instance Day Day9 where
  sol1, sol2 :: proxy Day9 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2