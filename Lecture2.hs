-- You'll notice that here we're using Empty instead of [] and Cons instead of :.
-- This is simply because [] and : are reserved and we cannot redefine them.
data IntList = Empty | Cons Int IntList

data IntPair = IntPair Int Int

sumPair :: IntPair -> Int
sumPair (IntPair x y) = x + y

myMap :: (a -> b) -> [a] -> [b]
myMap f [] = []
myMap f (x:xs) = (f x):(myMap f xs)
