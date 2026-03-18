-- List Comprehension in Haskell
-- It is similar to math notation (e.g set-builder noatation)
-- Basic Syntax:
-- [expression | generator, condition(optional)]
--
-- e.g
squared_list :: [Int]
squared_list = [x^2 | x <- [1..10]]

-- e.g with condition
mod2_list :: [Int]
mod2_list = [x | x <- [1..10], x `mod` 2 == 0] -- [expression | generator, condition]

-- mulriple generators
tuple_list :: [(Int, Int)]
tuple_list = [(x, y) | x <- [0..4], y <- [5..9]]

-- Using let..in, inside list comprehension
triple_list :: [Int]
triple_list = [y | x <- [8..18], let y = x * 3] -- list comprehension using a local var


-- List comprehension also works with Strings, as a String is a 'list of Chars'
count_char :: Char -> String -> Int -- Type definition
count_char x xs = length [x' | x' <- xs, x' == x]

get_num_inits :: Char -> [String] -> Int
get_num_inits x xs = length [x' | x' <- xs, x' !! 0 == x]

