{-# LANGUAGE GHC2021 #-}

module Solutions.Day4 (Day4) where

import Day

data Day4

instance Day Day4 where
  sol1, sol2 :: proxy Day4 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2