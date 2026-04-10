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

lenList :: [a] -> Int -- Type definition | get a list of any type of element and return the length
	  -- foldl (function) (base value) (list) | NOTE: the funcion is actually an ACCUMULATOR
lenList xs = foldl (\acc x -> acc + 1) 0 xs -- \acc .... is a lamnda function, it is an anonymous funct.

sumEven :: [Int] -> Int -- Type definition | sum all the Even numbers of a list
	  -- foldl (function/accumulator) (base value) (list)
sumEven xs = foldl (\acc x -> if x `mod` 2 == 0 then acc + x else acc) 0 xs


-- Local Bindings (local variables)
-- For local variable sin Haskell, ther is 'where' and 'let ... in'
dummy1 x = b + 3
 where
  a = x + 1
  b = a * 2

distance :: Floating a => a -> a -> a -- Type definition | get the distance between two points
distance x y = sqrt (x2 + y2)
 where
  x2 = x^2
  y2 = y^2

circleArea :: Float -> Float -- Type definition | using local bindings 'let...in'
circleArea x =
 let x2 = x^2
 in pi * x2

distanceLet :: Floating a => a -> a -> a -- Type definition | using let...in as local bindings
distanceLet x y =
 let x2 = x^2
     y2 = y^2
 in sqrt(x2 + y2)

-- List Comprehension
-- xs = [expression | generator, condition] | General structure for list comphrenesion

squares :: Int -> [Int] -- Type definition | get the list of squares from 1 to n (input num)
squares x = [v^2 | v <- [1..x]]

cubes :: Int -> [Int] -- Type definition | get the list of cubes from 1 to n (input number)
cubes x = [v^3 | v <- [1..x]]

basic = [x | x <- [5..8]] -- Just generate a hardcoded list (no type definition)

doubleVals :: Int -> [Int] -- Type definition | generate a list of doubles from 1 to n (input value)
doubleVals x = [x*2 | x <- [1..x]]

-- NOTE: This exercise requires condition
-- From que definition of List Comprehension: xs = [expression | generator, condition]
-- So the if statement (or filter) goes as the last value
onlyOdds x = [v | v <- [1..x], odd v]

-- Generate a list of numbers that are only greater than 11
gt11 :: [Int] -> [Int]
gt11 xs = [v | v <- xs, v > 11]

keepUpper :: String -> String -- Type definition | keep only the uppercase characters from a given str
keepUpper charLs = [v | v <- charLs, v >= 'A' && v <= 'Z']

-- The zip function
-- :t zip :: [a] -> [b] -> [(a, b)]
-- zip takes two lists, adn combines them as a list of pairs
-- NOTE: If lists are of different length, zip stops at the shortest one

getIndices :: String -> [(Int, Char)] -- Type definition | Make a list containing the index, char
				      --                   of a given String (list of Chars)
getIndices charLs = zip [0..length(charLs)] charLs

getIndexEven :: [Int] -> [(Int, Int)] -- Type definition | Make a list of the indices of the even numbers
                                      --                   of a list.
getIndexEven xs = ...
