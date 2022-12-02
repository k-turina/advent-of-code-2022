{-# LANGUAGE GHC2021 #-}

module Solutions.Day2 (Day2) where

import Control.Arrow (Arrow (second))
import Data.Char (chr, ord)
import Data.List.Split
import Day

data Day2

instance Day Day2 where
  sol1, sol2 :: proxy Day2 -> String -> Int
  sol1 _ = task1 . parse
  sol2 _ = task2 . parseAdvanced

data Move = A | B | C deriving (Eq, Enum, Bounded)

data Strat = X | Y | Z deriving (Enum)

class (Enum a, Bounded a, Eq a) => Circular a where
  next, prev :: a -> a
  next a = if a == maxBound then minBound else succ a
  prev a = if a == minBound then maxBound else pred a

instance Circular Move

parseMove :: Char -> Move
parseMove x = case x of 'A' -> A; 'B' -> B; 'C' -> C

parseStrat :: Char -> Strat
parseStrat x = case x of 'X' -> X; 'Y' -> Y; 'Z' -> Z

parse :: String -> [(Move, Move)]
parse = (second (toEnum . fromEnum) <$>) . parseAdvanced

parseAdvanced :: String -> [(Move, Strat)]
parseAdvanced = fmap f . lines where f [x, _, z] = (parseMove x, parseStrat z)

task1 :: [(Move, Move)] -> Int
task1 = sum . fmap scoreSingle
  where
    scoreSingle (elf, me) = outcome + shape
      where
        shape = case me of
          A -> 1
          B -> 2
          C -> 3
        outcome = case (elf, me) of
          (x, y) | x == y -> 3
          (x, y) | next x == y -> 6
          _ -> 0

task2 :: [(Move, Strat)] -> Int
task2 = task1 . fmap toAppropriateMove
  where
    toAppropriateMove (elf, strat) = (elf, me)
      where
        me = case strat of
          X -> prev elf
          Y -> elf
          Z -> next elf