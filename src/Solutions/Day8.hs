{-# LANGUAGE GHC2021 #-}

module Solutions.Day8 (Day8) where

import Day

data Day8

instance Day Day8 where
  sol1, sol2 :: proxy Day8 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2