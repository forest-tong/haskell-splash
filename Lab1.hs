module Lab1 where

-- Exercise 0. Define multiply.
multiply :: Int -> Int -> Int

-- Exercise 1. Add 1 to every element in a list of lists.
incrementAll2 :: [[Int]] -> [[Int]]


-- Exercise 2a. Define zip using zipWith. zip is a specific
--				case of zipWith (as in, zipWith is a more
--				general form of zip)
myZip :: (a -> b -> c) -> [a] -> [b] -> [c]

-- hint: define a helper function formTuple
formTuple :: a -> b -> (a, b)


-- Exercise 2b. Define zipWith using map and zip
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

-- hint: you may define a function like the following, or you may use
-- 		 a builtin function with the same type signature, called uncurry
applyFn :: (a -> b -> c) -> (a, b) -> c


-- Exercise 3a. Implement any using filter. Look up any
--				on hoogle to learn its functionality. 
-- hint: you may find the function null useful
myAny :: (a -> Bool) -> [a] -> Bool


-- Exerise 3b. Implement elem using any
myElem :: Eq a => a -> [a] -> Bool



-- Additional Exercises

-- Exercise 4
-- Get the second element of a list.
-- (Look up head and last.)
snd' :: [a] -> a

-- Exercise 5
-- Get the list [1, 2, ..., n].
-- (Look up take.)
firstN :: Int -> [Int]

-- Exercise 6
-- Calculate a^b.
-- (Look up repeat.)
power :: Int -> Int -> Int
