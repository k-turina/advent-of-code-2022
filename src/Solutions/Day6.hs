{-# LANGUAGE GHC2021 #-}

module Solutions.Day6 (Day6) where

import Day

data Day6

instance Day Day6 where
  sol1, sol2 :: proxy Day6 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2