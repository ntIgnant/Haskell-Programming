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
