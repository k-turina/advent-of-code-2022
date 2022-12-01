{-# LANGUAGE GHC2021 #-}

module Solutions.Day1 (Day1) where

import Data.List
import Data.List.Split (splitOn)
import Data.Ord
import Day

data Day1

instance Day Day1 where
  sol1, sol2 :: proxy Day1 -> String -> Int
  sol1 _ = maximum . fmap sum . parseInput
  sol2 _ = sum . take 3 . sortOn Down . fmap sum . parseInput

parseInput :: String -> [[Int]]
parseInput = (fmap . fmap) read . splitOn [""] . lines