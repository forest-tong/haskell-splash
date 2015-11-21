-- Problem 1
-- Reverse a list.
reverse' :: [a] -> [a]


-- Problem 2
-- Implement map using fold.
foldMap :: (a -> b) -> [a] -> [b]


-- Problem 3
-- Implement elem using fold.
-- (Look up elem if you don't know what it does!)
elem' :: (Eq a) => a -> [a] -> Bool  

-- The built-in algebraic data type "Maybe" represents values that might exist.
-- Maybe is defined as follows:
-- data Maybe a = Nothing | Just a

-- Maybe is frequently useful in real-world scenarios to represent failed
-- computations, instead of something like null in Java or None in Python.
-- For example, Maybe can be used to represent the result of division:
divide :: Float -> Float -> Maybe Float
divide x 0 = Nothing
divide x y = Just (x/y)


-- Problem 4
-- Define a data type called PersonName that consists of firstName,
-- middleName, and lastName, where any of the names might not exist.


-- Problem 5
-- nameString is the concatenation of all the existing names of a PersonName,
-- or Nothing if none of the names exist.
