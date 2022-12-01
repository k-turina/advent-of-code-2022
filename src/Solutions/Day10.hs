{-# LANGUAGE GHC2021 #-}

module Solutions.Day10 (Day10) where

import Day

data Day10

instance Day Day10 where
  sol1, sol2 :: proxy Day10 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2