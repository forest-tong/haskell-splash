module Combinations2 where

-- Another implementation: filtering out duplicates
-- noDuplicates [1, 2, 3] = True
-- noDuplicates [1, 1, 2] = False
noDuplicates :: [Int] -> Bool
noDuplicates list = all (\pair -> head pair == last pair) $ cartesianProduct list

-- The cartesian product of a list (with itself) is the set of pairs of elements
-- which both elements are taken from that list (and don't have to be distinct).
cartesianProduct :: [Int] -> [[Int]]
cartesianProduct list = [[x, y] | x <- list, y <- list]

-- Potential problem: Implement the cartesian product between two lists without a list comprehension.
-- (Hint: look up the function concat.)
cartesianProduct2 :: [a] -> [b] -> [[c]]
cartesianProduct2 list1 list2 = concat $ map getPairsWithY list2
    where getPairsWithY = \y -> map (:[y]) list1

-- This function should be the cartesian product of one list against itself n times:
-- the set of n-tuples where each element is taken from that list (and don't have to be distinct).
-- cartesianProduct [1, 2] 3 = [[1, 1], [1, 2], [2, 1], [2, 2]]
cartesianProductN :: [Int] -> Int -> [[Int]]
cartesianProductN list n = foldl cartesianProduct2 list (take (n - 1) $ repeat list)

combinations2 :: [Int] -> Int -> [[Int]]
combinations2 list k = filter noDuplicates (cartesianProduct list k)
