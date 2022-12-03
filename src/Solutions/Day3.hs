{-# LANGUAGE GHC2021 #-}

module Solutions.Day3 (Day3) where

import Data.Char
import Data.List
import Data.List.Split
import Day

data Day3

instance Day Day3 where
  sol1, sol2 :: proxy Day3 -> String -> Int
  sol1 _ = task1
  sol2 _ = task2

priority :: Char -> Int
priority x = case x of
  x | isAsciiLower x -> ord x - ord 'a' + 1
  x | isAsciiUpper x -> ord x - ord 'A' + 27

task1, task2 :: String -> Int
task1 =
  let findCommon = sum . fmap priority . nub . uncurry intersect
      splitHalves x = splitAt (length x `div` 2) x
   in sum . fmap (findCommon . splitHalves) . lines

task2 =
  let findCommon = sum . fmap priority . nub . foldl1' intersect 
   in sum . fmap findCommon . chunksOf 3 . lines