-- Functions basically get a serie of arguemnts with types, and return another type
-- definied as [function name] [args] :: [type arg] -> [type output]

tupleSum :: (Int, Int, Int) -> Int -- So here, the arguemnt is a tuple of Int elements, and outpu an Int
tupleSum (a, b, c) = a + b + c

-- Curried functions and Uncurried functions

-- Uncurried functions are the ones that take one argument
--e.g
add :: (Int, Int) -> Int -- type definition | so this function takes only one arg (tuple)
add (x, y) = x + y

-- Curried functions are the ones that take more than 1 argument | one argument at a time and return a fuction
-- e.g
add' :: Int -> Int -> Int -- type definiton | this functon takes two args ints, and returns an int
add' x y = x + y
-- for this function add', haskell treats it internally as this:
-- add' :: Int -> (Int -> Int) | so it really takes one arg, and returns a new function
