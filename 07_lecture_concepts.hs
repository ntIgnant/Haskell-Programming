-- Okay so Excercises or Toy problems regarding Ropics of Week 07

-- TOPICS:
-- 	- foldl
-- 	- local bindings
-- 	- list comprehension
-- 	- the zip function


-- The foldl function | "Fold FROM Left"
sumList :: [Int] -> Int -- Type definition | a function that gets a list of numbers, and
                                          -- returns the sum of all its values
sumList xs = foldl (+) 0 xs

subList :: [Int] -> Int -- Type definition | same as sumList but with substraction
subList xs = foldl (-) 0 xs

prodList :: [Int] -> Int -- Type definition | same shit but with (*) multiplication operator
prodList xs = foldl (*) 1 xs -- NOTE: Initial value is 0 bc of multiplication

lengthList :: [a] -> Int -- Type definition | get the length of a list withough using 'length'
lengthList xs = foldl (\acc x -> acc + 1) 0 xs

allTrue :: [Bool] -> Bool -- Type definition | Return True only if all the elements of the list are True
allTrue xs = foldl (\val x -> val && x) True xs
