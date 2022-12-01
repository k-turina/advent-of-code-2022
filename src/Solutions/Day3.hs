{-# LANGUAGE GHC2021 #-}

module Solutions.Day3 (Day3) where

import Day

data Day3

instance Day Day3 where
  sol1, sol2 :: proxy Day3 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2