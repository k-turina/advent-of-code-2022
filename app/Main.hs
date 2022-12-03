{-# LANGUAGE GHC2021 #-}

module Main where

import Data.Proxy
import Solutions

main :: IO ()
main = do
  inputs <- getContents
  print (sol1 proxy inputs)
  print (sol2 proxy inputs)
  where
    proxy :: Proxy Day3
    proxy = Proxy