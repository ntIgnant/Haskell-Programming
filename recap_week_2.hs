-- Prelude List functions

-- 1. Return the First Element of the list
return_head :: [Int] -> Int -- Function Type declaration
return_head xs = head xs -- xs being the list (argument)

-- 2. Return the list without the first element
return_tail :: [Int] -> [Int]
return_tail xs = tail xs -- xs being the list (passed arg)

-- 3. Return the length of the List
return_length :: [Int] -> Int -- Type definition
return_length xs = length xs

-- 4. Return the last element from the list (NOT SURE)
return_last :: [Int] -> Int
return_last xs =
    let last_inx = length xs
        in xs !! (last_inx - 1)

rec_return_last :: [Int] -> Int -- Type definition
rec_return_last [x] = x -- If the imput list has EXACTY ONE element, return it
rec_return_last (_:xs) = rec_return_last xs -- call recursion again
                                            -- (x:xs) traverses the whole list, and usses the recurtsion call at the end to evaluate the single element 'Last element'

-- 5. Return the list without its final element (REVIEW)
-- return_without_final :: [Int] -> [Int]
-- return_without_final xs =
--     do (
--         let last_inx = length xs
--         in let val_to_remove = xs !! (last_inx - 1)

--         in drop val_to_remove xs
--     )

-- rec_return_without_final :: [Int] -> [Int]
-- rec_return_without_final

-- 1. my_sum

-- Write a function that sums all elements of a list.

-- Example:
-- my_sum [1,2,3,4]
-- -- 10

my_sum :: [Int] -> Int

-- For the base case, returning 0 will be the last '+number' of the recursion
-- it is like
-- if num_sum list is empty list:
--        return 0 'the actual number 0'

-- It stops the recursion because it has no forward call
-- to my_sum after returning 0

my_sum [] = 0 -- base case

-- Here, the list is split using pattern matching
-- x is like saying "head xs"
-- and the rest of xs is like "tail xs"

-- e.g [1,2,3,4]
-- my_sum (x:xs)
--  x = 1 'head'
--  xs = [2, 3, 4] 'tail'
my_sum (x:xs) = x + my_sum xs

-- ------------------------------------------------------------
-- 2. my_product

-- Multiply all elements of a list.

-- Example:
-- my_product [2,3,4]
-- -- 24

my_product :: [Int] -> Int
my_product [] = 1 -- Base case needs to be 1 becausse it will be multiplied!
                  -- would't work by returing 0

my_product (x:xs) = x * my_product xs

-- -- Internally:
-- my_product(x:xs):
--     if list is empty:
--         return 1 "value  1"

--     else:
--         x * (my_product xs)

-- ------------------------------------------------------------
-- 3. my_reverse

-- Reverse a list recursively.

-- Example:
-- my_reverse [1,2,3]
-- -- [3,2,1]

-- Restriction:
-- Try once without using the built-in reverse.

my_reverse :: [Int] -> [Int]
my_reverse [] = [] -- Base case | if the list is empty, return an empty list bc of the arg type
my_reverse (x:xs) = my_reverse xs ++ [x]

-- Here, tail recrusion is used because it has the 'reversed' effect
-- on the stack

--e.g internally
-- with [1, 2, 3, 4]

--sstack:
-- 1
-- 2, 1
-- 3, 2, 1
-- 4, 3, 2, 1

-- ------------------------------------------------------------
-- 4. my_last

-- Return the last element of a list.

-- Example:
-- my_last [5,7,9]
-- -- 9

-- Assume the list is non-empty.

my_last :: [Int] -> Int
my_last [e] = e -- Base case
-- [e] means a list with exactly ONE element

my_last (_:xs) = my_last xs
-- "_:xs" means "ignore the first element, create the tail of the list"
-- e.g [1, 2, 3]
-- _:xs
    -- _ = 1 (ignored/skept)
    -- xs = [2, 3]

-- ------------------------------------------------------------
-- 5. my_init

-- Return everything except the last element.

-- Example:
-- my_init [1,2,3,4]
-- -- [1,2,3]

my_init :: [Int] -> [Int]

-- If there is exaclty one element in the list, return an empty list
-- So that "empty" will be the last value appended to the list
my_init [e] = [] -- Base case
my_init (x:xs) = [x] ++ my_init xs

-- ------------------------------------------------------------
-- 6. first_two

-- Return the first two elements of a list as another list.

-- Example:
-- first_two [7,8,9,10]
-- -- [7,8]

-- Assume at least two elements exist.

first_two :: [Int] -> [Int]
first_two xs = take 2 xs -- this returns the first 'n' values of the list as a list

pat_first_two :: [Int] -> [Int]
pat_first_two (a:b:xs) = [a, b] -- Using pattern matching

-- For example
-- [1, 2, 3, 4]
-- Haskell sees it as
-- 1 : 2 : 3 : 4 : []

-- ------------------------------------------------------------
-- 7. swap_first_two

-- Swap the first two elements.

-- Example:
-- swap_first_two [1,2,3,4]
-- -- [2,1,3,4]

swap_first_two :: [Int] -> [Int]
swap_first_two (a:b:xs) = [b, a] ++ xs -- swap, and insert ath the beginning


-- ------------------------------------------------------------
-- 8. every_other

-- Return every second element starting from the first.

-- Example:
-- every_other [1..10]
-- -- [1,3,5,7,9]

--Recursion Version
rec_every_other :: [Int] -> [Int]
rec_every_other [] = [] -- Base case 1
rec_every_other [i] = [i] -- Base case 2
                          -- Case where the list has a single element
                          -- This is necesary for the logic to work
                          -- if the initial list has just 1 element

rec_every_other (a:_:xs) = [a] ++ rec_every_other xs


-- ------------------------------------------------------------
-- 9. count_zeros

-- Count how many zeros appear in a list.

-- Example:
-- count_zeros [0,1,0,2,0]
-- -- 3

count_zeros :: [Int] -> Int
count_zeros [] = 0 -- Base case
                   -- if the list is empty, return a 0 to be +0
                   -- which won't affect the result

count_zeros (x:xs)
    | x == 0 = 1 + count_zeros xs
    | otherwise = count_zeros xs

-- ------------------------------------------------------------
-- 10. replicate_n

-- Create a list containing the same element repeated n times.

-- Example:
-- replicate_n 4 'a'
-- -- "aaaa"

replicate_n :: Int -> Char -> String
replicate_n 0 c = [] -- Base case when the n becomes 0, return 'emtpy'
replicate_n n c = [c] ++ replicate_n(n - 1) c 

-- ------------------------------------------------------------
-- 11. my_zip

-- Combine two lists into pairs.

-- Example:
-- my_zip [1,2,3] ['a','b','c']
-- -- [(1,'a'),(2,'b'),(3,'c')]

-- Stop when either list ends.

my_zip :: [a] -> [b] -> [(a, b)] -- The last one should be a list of tuples

-- Set both base cases, whenever one of the list ends
my_zip [] ys = []
my_zip xs [] = []

my_zip (x:xs) (y:ys) = [(x, y)] ++ my_zip xs ys
-- my_zip (x:xs) (y:ys) = (x, y) : my_zip xs ys -- Would also work, by using ':' it is adding the tuple (x, y)
--                                              -- to the front of the list

-- ------------------------------------------------------------
-- 12. my_elem

-- Check whether an element exists in a list.

-- Example:
-- my_elem 3 [1,2,3,4]
-- -- True

-- my_elem 9 [1,2,3,4]
-- -- False

my_elem :: Int -> [Int] -> Bool
my_elem n [] = False

my_elem n (x:xs) =
    if x == n
        then True
    else
        my_elem n xs

-- ------------------------------------------------------------
-- 13. remove_first

-- Remove the first occurrence of an element.

-- Example:
-- remove_first 3 [1,3,5,3]
-- -- [1,5,3]

-- ------------------------------------------------------------
-- 14. is_sorted

-- Check whether a list is sorted in non-decreasing order.

-- Example:
-- is_sorted [1,2,2,5]
-- -- True

-- is_sorted [1,5,2]
-- -- False

-- Hint:
-- Pattern match with (x:y:xs).

-- ------------------------------------------------------------
-- 15. compress

-- Remove consecutive duplicates.

-- Example:
-- compress [1,1,2,2,2,3,1,1]
-- -- [1,2,3,1]

-- ------------------------------------------------------------
-- 16. my_take_while

-- Take elements from the beginning while a condition is true.

-- Example:
-- my_take_while (<5) [1,2,3,7,4]
-- -- [1,2,3]

-- ------------------------------------------------------------
-- 17. my_map

-- Implement your own version of map.

-- Example:
-- my_map (+1) [1,2,3]
-- -- [2,3,4]

-- ------------------------------------------------------------
-- 18. my_filter

-- Implement your own version of filter.

-- Example:
-- my_filter even [1..10]
-- -- [2,4,6,8,10]