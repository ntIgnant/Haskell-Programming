-- Functional Programming is all about thinking about programming as mapping functions for
-- inputs and outputs.
--
-- So, instead of thining about it as a sequential flow, it is all about passing input/output
-- valies though functions and get more values.


-- Exampe of simple functon (double a number)
doubleNum :: Int -> Int -- Type definition of the function | "Type Signature"
doubleNum x = x + x

-- Example of function with two arguments
getSum :: Int -> Int -> Int -- so this will get two ints, and return an int
			    -- The last value is always the one that will be returned

-- Structure for a function => functionName argi ... argn | and the args are space separated
getSum x y = x + y -- so the args for the function are space separated


-- Functions calling functions
quadrupleNum :: Int -> Int
quadrupleNum x = (doubleNum x) * 2 -- so do the double of a number and multiply it by two

