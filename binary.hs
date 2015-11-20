-- Form the list of all binary sequences of length n, in order.
binarySequences :: Int -> [[Int]]
binarySequences 0 = [[]]
binarySequences n = map (0:) (binarySequences (n - 1)) ++ (map (1:) (binarySequences (n - 1)))

-- Given a sequence a of length k, find all sequences b of length k such that 0 <= b[i] < a[i] in any order.
sequences :: [Int] -> [[Int]]
sequences [] = [[]]

-- Note: can be done with a list comprehension too.
