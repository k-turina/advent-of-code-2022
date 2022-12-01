{-# LANGUAGE GHC2021 #-}

module Solutions.Day2 (Day2) where

import Day

data Day2

instance Day Day2 where
  sol1, sol2 :: proxy Day2 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2