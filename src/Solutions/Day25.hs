{-# LANGUAGE GHC2021 #-}

module Solutions.Day25 (Day25) where

import Day

data Day25

instance Day Day25 where
  sol1, sol2 :: proxy Day25 -> String -> Int
  sol1 _ = const 5
  sol2 _ = const 2