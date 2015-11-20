-- Form the list l = [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], ...] in two ways.

-- First, using zipWith recursively.
-- Note that l satisfies the recurrence l[i] ++ [i + 2] == l[i + 1]
l = [1] : zipWith (++) l lasts
        where lasts = map (:[]) [2..]

-- Next, using take.
l2 = zipWith take [1..] (repeat [1..])
