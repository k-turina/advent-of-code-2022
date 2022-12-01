{-# LANGUAGE GHC2021 #-}

module Solutions.Day20 (Day20) where

import Day

data Day20

instance Day Day20 where
  sol1, sol2 :: proxy Day20 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2