{-# LANGUAGE GHC2021 #-}

module Solutions.Day16 (Day16) where

import Day

data Day16

instance Day Day16 where
  sol1, sol2 :: proxy Day16 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2