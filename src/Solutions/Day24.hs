{-# LANGUAGE GHC2021 #-}

module Solutions.Day24 (Day24) where

import Day

data Day24

instance Day Day24 where
  sol1, sol2 :: proxy Day24 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2