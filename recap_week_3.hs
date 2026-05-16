-- Haskell Practice Set — Week 3 Style
-- Topics: type signatures, type classes, numeric types, tuples, sorting

-- Some Information Related to Types...

-- Overloaded Functions:
--  Functions that work with multiple types
--  e.g (+) Num a => a -> a -> a | '+' works with any type 'a' as long as it is a 'Num'

-- Type Classes:
-- A type class describe a group of types that support certain operations

-- Eq -> Types whos values can be checked for equality (==) (/=)
-- Ord -> Types whos values can be Ordered or Compared (>) (<) (=>) (>=)
-- Show -> Types whos values can be transformed to strings e.g 123 to "123" or 3.14 to "3.14"
-- Read -> Types whos values can be formed FROM string e.g "1.43" to 1.43 | NOTE: haskell needs to know the conversion type
-- Integral -> Types whos values are Whole-Numbers
-- Fractional -> Types that supports decimal/fractional

-- ------------------------------------------------------------
-- 1. my_len_double

-- Write a function that returns the length of a list as a Double.

-- Example:
-- my_len_double [10,20,30]
-- -- 3.0

-- Hint:
-- length returns Int, but you may need a numeric conversion.

my_len_double :: [Int] -> Double

-- fromIntegral converts (Int) -> (many numeric types)

-- In this example, fromIntegral knows the conversion needs to be Double
-- because it is declared in the function type my_len_double :: [Int] -> Dobule
my_len_double xs = fromIntegral (length xs)

-- ------------------------------------------------------------
-- 2. safe_average

-- Write a function that returns the average of a list of Doubles.

-- Example:
-- safe_average [10,20,30]
-- -- 20.0

-- Assume the list is non-empty.

safe_average :: [Int] -> Double
safe_average xs = fromIntegral (sum xs) / fromIntegral(length xs)

-- ------------------------------------------------------------
-- 3. avg_ints

-- Write a function that takes a list of Ints and returns their average as a Double.

-- Example:
-- avg_ints [1,2,3,4]
-- -- 2.5

-- Hint:
-- You cannot directly divide Int values using (/).

-- ------------------------------------------------------------
-- 4. mins

-- Write a function that returns the minimum value in a non-empty list.

-- Example:
-- mins [4,2,9,1,7]
-- -- 1

-- Use the built-in min function.
minim :: Ord a => [a] -> a
minim [x] = x -- Base case, for when the list has only 1 item
minim (x:xs) = min x (minim xs)

-- ------------------------------------------------------------
-- 5. maxs

-- Write a function that returns the maximum value in a non-empty list.

-- Example:
-- maxs [4,2,9,1,7]
-- -- 9

-- Use the built-in max function.

maxims :: Ord a => [a] -> a -- Using Ord type class to make the function functional for all comparable/orderable values
maxims [x] = x -- Base case
maxims (x:xs) = max x (maxims xs)

-- ------------------------------------------------------------
-- 6. range_list

-- Write a function that returns the difference between the maximum
-- and minimum value of a list.

-- Example:
-- range_list [4,2,9,1,7]
-- -- 8

-- Think carefully about the type signature.

range_list :: (Ord a, Num a) => [a] -> a -- Here, both Ord and Num type classes need to be defined
                                         -- because in the function, two operations are used. 
                                         -- maximum/minimum (which require Ord type class) and '-' (which require Num type class) 
range_list xs = maxims xs - minim xs

-- ------------------------------------------------------------
-- 7. count_above

-- Write a function that takes a number and a list, then counts how many
-- values in the list are greater than that number.

-- Example:
-- count_above 50 [40,60,70,20]
-- -- 2

count_above :: Ord a => a -> [a] -> Int
count_above n [] = 0 -- Base case "If there is just one element, return it and don't call again"

count_above n (x:xs)
    | x > n = 1 + count_above n xs
    | otherwise = count_above n xs

-- ------------------------------------------------------------
-- 8. pass_fail

-- Write a function that takes a grade and returns "Pass" if the grade is
-- at least 40, otherwise "Fail".

-- Example:
-- pass_fail 55
-- -- "Pass"

-- pass_fail 25
-- -- "Fail"

-- ------------------------------------------------------------
-- 9. student_grades

-- Design a type for students and their grades.

-- Use this data:

-- Alice:   85, 55, 62.5
-- Bob:     45, 65.3, 72
-- Charlie: 58, 82, 45

-- Create a value called student_grades.

-- Example idea:
-- student_grades :: [(String, [Double])]

type Studentgrades = [(String, [Double])] -- Note, the name for a type MUST start with uppercase

-- Create an instance of the custom type
stud_grades_01 :: Studentgrades
stud_grades_01 = [("Alice", [85, 55, 62.5]), ("Bob", [45, 65.3, 72])]

-- ------------------------------------------------------------
-- 10. student_average

-- Write a function that takes one student and their grades, and returns
-- the student's name with their average.

-- Example:
-- student_average ("Alice", [85,55,62.5])
-- -- ("Alice", 67.5)

student_average :: (Fractional a, Num a) => (String, [a]) -> (String, a)
student_average (name, grades) = let
    avg_grade = sum grades / fromIntegral (length grades) -- get the average grade of the list
                                                          -- fromIntegral is used here to convert from
                                                          -- Int to Double because (/) does't support
                                                          -- Type Int
    in (name, avg_grade)

-- ------------------------------------------------------------
-- 11. all_averages

-- Write a function that takes a list of students and grades, and returns
-- a list of names with averages.

-- Example:
-- all_averages student_grades
-- -- [("Alice",67.5),("Bob",60.766666666666666),("Charlie",61.666666666666664)]

-- ------------------------------------------------------------
-- 12. min_max_avg_one

-- Write a function that takes one student and returns:
-- name, minimum grade, maximum grade, average grade.

-- Example:
-- min_max_avg_one ("Alice", [85,55,62.5])
-- -- ("Alice",55.0,85.0,67.5)

-- ------------------------------------------------------------
-- 13. min_max_avg

-- Write a function that takes all students and returns a list of quadruples:
-- (name, minimum grade, maximum grade, average grade)

-- Example:
-- min_max_avg student_grades
-- -- [("Alice",55.0,85.0,67.5), ...]

-- ------------------------------------------------------------
-- 14. insert_sorted_int

-- Write a function that inserts an Int into a sorted list of Ints.

-- Example:
-- insert_sorted_int 3 [1,2,4,6]
-- -- [1,2,3,4,6]

-- insert_sorted_int 7 [1,2,4,6]
-- -- [1,2,4,6,7]

-- ------------------------------------------------------------
-- 15. insert_sorted

-- Write a polymorphic version of insert_sorted_int.

-- Example:
-- insert_sorted 'c' ['b','d','f']
-- -- "bcdf"

-- Hint:
-- The type needs Ord.

-- ------------------------------------------------------------
-- 16. insertion_sort_int

-- Write insertion sort for lists of Ints only.

-- Example:
-- insertion_sort_int [4,2,7,1]
-- -- [1,2,4,7]

-- Use insert_sorted_int.

-- ------------------------------------------------------------
-- 17. insertion_sort

-- Write a polymorphic insertion sort.

-- Example:
-- insertion_sort ["pear", "apple", "banana"]
-- -- ["apple","banana","pear"]

-- Hint:
-- The type needs Ord.

-- ------------------------------------------------------------
-- 18. insertion_sort_tail

-- Write a tail-recursive version of insertion sort.

-- Example:
-- insertion_sort_tail [4,2,7,1]
-- -- [1,2,4,7]

-- Hint:
-- Use a helper function with an accumulator.

-- Example structure:
-- insertion_sort_tail xs = helper xs []

-- ------------------------------------------------------------
-- 19. type_signature_practice

-- Write the most general type signature for each function below.

-- a)
-- same x y = x == y

-- b)
-- bigger x y = x > y

-- c)
-- add_three x = x + 3

-- d)
-- pair_with_zero x = (x, 0)

-- e)
-- apply_twice f x = f (f x)

-- ------------------------------------------------------------
-- 20. type_error_practice

-- Explain why each expression may cause a type error.

-- a)
-- sum [1..10] / length [1..10]

-- b)
-- "hello" + "world"

-- c)
-- [1,2,3] ++ 4

-- d)
-- (3,4) : [5,6]

-- e)
-- True == 1