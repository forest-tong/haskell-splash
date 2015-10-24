-- Exercises that might be useful for the eventual implementation of combinations
-- makeLists [1, 2, 3] = [[1], [2], [3]]
makeLists :: [Int] -> [[Int]]
makeLists list = map (:[]) list

-- prependElement 3 [[1], [2]] = [[3, 1], [3, 2]]
prependElement :: Int -> [[Int]] -> [[Int]]
prependElement element list = map (element:) list

-- Generate the combinations of K distinct objects chosen from the N elements of a list
-- Test cases (ordering doesn't matter):
-- combinations [] 3 = []
-- combinations [1, 2, 3] 0 = [[]]
-- combinations [1, 2, 3] 1 = [[1], [2], [3]]
-- combinations [1, 2, 3] 2 = [[1, 2], [2, 3], [3, 1]]
-- combinations [1, 2, 3] 3 = [[1, 2, 3]]
combinations :: [Int] -> Int -> [[Int]]
combinations [] k = []
combinations list 0 = [[]]
combinations list 1 = makeLists list
combinations list k = containsFirst ++ doesNotContainFirst
    where containsFirst = prependElement (head list) $ combinations (tail list) (k - 1)
          doesNotContainFirst = combinations (tail list) k

-- Possible problem skeleton:
-- combinations :: -- Fill in type signature
-- combinations [] k = -- Base case
-- combinations list 0 = -- Base case
-- combinations list 1 = -- Base case
-- combinations list k = -- Fill this in
--     where containsFirst = -- All combinations that contain the first element
--           doesNotContainFirst = -- All combinations that do not contain the first element
