-- ============================================================
-- Practice Exercises: Workshop 4 - Writing Functions
-- ============================================================

-- 1. isOdd
-- Write a function that takes an integer and returns True if it is odd,
-- and False otherwise.
--
-- Example:
-- isOdd 5
-- -- True
--
-- isOdd 8
-- -- False
--
-- Hint: use mod.


-- 2. firstNAndRest
-- Write a function that takes a number n and a list, and returns a pair:
-- the first n elements, and the rest of the list.
--
-- Example:
-- firstNAndRest 3 [1,2,3,4,5]
-- -- ([1,2,3],[4,5])
--
-- Hint: use take and drop.


-- 3. half
-- Write a function that takes a number and returns half of it.
--
-- Example:
-- half 10
-- -- 5.0
--
-- Hint: use an operator section.


-- 4. gradeStudentIf
-- Write a function that takes a score and returns a grade using
-- if-then-else.
--
-- 90 or above: "A"
-- 80 or above: "B"
-- 70 or above: "C"
-- 60 or above: "D"
-- below 60:    "F"


-- 5. gradeStudentGuards
-- Write the same grade function again, but this time use guards.


-- 6. gradeStudentCase
-- Write the same grade function again, but this time use a case expression.


-- 7. multiplyFour
-- Write a curried function that takes four numbers and returns their product.
--
-- Example:
-- multiplyFour 2 3 4 5
-- -- 120


-- 8. tripleAndMultiply
-- Write a function that triples the first number, then multiplies it by
-- two other numbers.
--
-- Example:
-- tripleAndMultiply 2 4 5
-- -- 120
--
-- Hint: define it using another multiplication function.


-- 9. powerOf
-- Write a curried function that takes an exponent and a base, and returns
-- the base raised to that exponent.
--
-- Example:
-- powerOf 3 2
-- -- 8
--
-- powerOf 2 4.5
-- -- 20.25
--
-- Hint: use replicate and product.


-- 10. namedPowers
-- Using powerOf, define these functions:
--
-- square
-- cube
-- fifthPower
--
-- Example:
-- square 6
-- -- 36
--
-- cube 2
-- -- 8


-- 11. safeTail
-- Rewrite tail as a total function using Maybe.
--
-- Example:
-- safeTail [1,2,3]
-- -- Just [2,3]
--
-- safeTail []
-- -- Nothing


-- 12. safeLast
-- Rewrite last as a total function using Maybe.
--
-- Example:
-- safeLast [1,2,3]
-- -- Just 3
--
-- safeLast []
-- -- Nothing


-- 13. safeInit
-- Rewrite init as a total function using Maybe.
--
-- Example:
-- safeInit [1,2,3]
-- -- Just [1,2]
--
-- safeInit []
-- -- Nothing


-- 14. safeMinimumEither
-- Rewrite minimum as a total function using Either.
--
-- Example:
-- safeMinimumEither [4,1,8]
-- -- Right 1
--
-- safeMinimumEither []
-- -- Left "empty list"


-- 15. safeHeadEither
-- Rewrite head as a total function using Either.
--
-- Example:
-- safeHeadEither [10,20,30]
-- -- Right 10
--
-- safeHeadEither []
-- -- Left "empty list"


-- 16. safeDivideEither
-- Write a function that divides two numbers.
-- Return Left "division by zero" if the second number is 0.
--
-- Example:
-- safeDivideEither 10 2
-- -- Right 5.0
--
-- safeDivideEither 10 0
-- -- Left "division by zero"