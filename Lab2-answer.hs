import Data.Bits
import Control.Monad

-- Problem 1
-- Reverse a list.
reverse' :: [a] -> [a]
reverse' list = foldl (flip (:)) [] list

-- Problem 2
-- Implement map using fold.
foldMap :: (a -> b) -> [a] -> [b]
foldMap f list = foldl (\acc x -> acc ++ [f x]) [] list

-- Problem 3
-- Implement elem using fold.
-- (Look up elem if you don't know what it does!)
elem' :: (Eq a) => a -> [a] -> Bool  
elem' y ys = foldl (\acc x -> acc || (x == y)) False ys

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

-- binaryString 0 = "0"
-- binaryString 1 = "1"
-- binaryString 2 = "10"
-- etc.
-- Might want to
-- import Data.Bits
-- (see http://hackage.haskell.org/package/base-4.8.1.0/docs/Data-Bits.html#t:Bits)
binaryString :: Int -> String
binaryString 0 = "0"
binaryString n = go n ""
    where go :: Int -> String -> String
          go 0 acc = acc
          go 1 acc = '1' : acc
          go n acc = go (shiftR n 1) ((if (testBit n 0) then '1' else '0') : acc)

-- ["0", "1", "10", "11", "100", "101", "110", "111", ...]
-- use binaryString
allBinaryStrings :: [String]
allBinaryStrings = map binaryString [0..]

-- the first N elements of allBinaryStrings
-- (takeNBinaryStrings 8) return ["0", "1", "10", "11", "100", "101", "110", "111"]
takeNBinaryStrings :: Int -> [String]
takeNBinaryStrings n = take n allBinaryStrings

-- allNDigitBinaryStrings 0 = ["0", "1"]
-- allNDigitBinaryStrings 1 = ["10", "11"]
-- allNDigitBinaryStrings 2 = ["100", "101", "110", "111"]
allNDigitBinaryStrings :: Int -> [String]
allNDigitBinaryStrings 0 = ["0", "1"]
allNDigitBinaryStrings n = map ('1' : ) (replicateM n ['0', '1'])

allBinaryStrings' :: [String]
allBinaryStrings' = concat (map allNDigitBinaryStrings [0..])
