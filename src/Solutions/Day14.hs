{-# LANGUAGE GHC2021 #-}

module Solutions.Day14 (Day14) where

import Day

data Day14

instance Day Day14 where
  sol1, sol2 :: proxy Day14 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2