module Lab1 where

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



-- Exercise 2b. Define zipWith using map and zip
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

-- hint: you may define a function like the following, or you may use
-- 		 a builtin function with the same type signature, called uncurry
applyFn :: (a -> b -> c) -> (a, b) -> c

-- Solution 2b, using uncurry
myZipWith fn listA listB = map (uncurry fn) (zip listA listB)

-- Solution 2b, without using uncurry
applyFn :: (a -> b -> c) -> (a, b) -> c
applyFn fn (a, b) = fn a b
myZipWith fn listA listB = map (applyFn fn) (zip listA listB)



-- Exercise 3a. Implement any using filter. 
-- hint: you may find the function null useful
myAny :: (a -> Bool) -> [a] -> Bool

-- Solution 3a
myAny pred list = not (null (filter pred list))



-- Exerise 3b. Implement elem using any
myElem :: Eq a => a -> [a] -> Bool

-- Solution 3b, using an anonymous function
myElem el list = any (\x -> el == x) list

-- Solution 3b, without using anonymous functions
isElem x y = x == y
myElem el list = any (isElem el) list