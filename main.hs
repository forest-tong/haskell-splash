module Main where

import Part1

main :: IO()
main = do
    print $ myMap (+1) [1, 2, 3]
