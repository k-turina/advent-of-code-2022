{-# LANGUAGE GHC2021 #-}

module Solutions.Day18 (Day18) where

import Day

data Day18

instance Day Day18 where
  sol1, sol2 :: proxy Day18 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2