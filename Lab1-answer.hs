-- Exercise 1. Add 1 to every element in a list of lists.
incrementAll2 :: [[Int]] -> [[Int]]

-- Solution 1
addOne x = x + 1
incrementAll2 list = map (\xlist -> map addOne xlist) list


-- Exercise 2a. Define zip using zipWith
myZip :: (a -> b -> c) -> [a] -> [b] -> [c]
formTuple :: a -> b -> (a, b)

-- Solution 2a
formTuple a b = (a, b)
myZip listA listB = zipWith formTuple listA listB


-- Exercise 2b. Define zipWith using map zip 
-- TODO: FINISH THIS
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
applyFn :: (a -> b -> c) -> (a, b) -> c

-- Solution 2b
applyFn fn (a, b) = fn a b 
myZipWith fn listA listB = map applyFn (zip listA listB)


-- implement any using map
-- implement elem using any