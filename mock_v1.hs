--------------------------------------------------
-- Task 1 -- 10 Marks
--------------------------------------------------
{-
Each question is worth 2 marks.
For each one, select either Yes or No by deleting the incorrect answer.
-}

-- 1. Is the following function total?
fun :: Int -> Int
fun x
  | x < 0     = x + 2
  | otherwise = x

-- Answer: Yes / No


-- 2. Is the following function tail recursive?
foo :: [a] -> Int -> Int
foo [] v     = v
foo (x:xs) v = foo xs (v + 1)

-- Answer: Yes / No


-- The remaining three questions are based on the following type:
data RateUnit = Weekly | Daily
  deriving (Show)

-- 3. Is the above type recursive?
-- Answer: Yes / No

-- 4. Is the above type polymorphic?
-- Answer: Yes / No

-- 5. Consider two values, a and b, of type RateUnit.
--    Would the expression a > b result in an error?
-- Answer: Yes / No


--------------------------------------------------
-- Task 2 -- 10 Marks
--------------------------------------------------
{-
We are working on a habit tracker.

The provided list "habits_rate" below contains habits represented as tuples:
    (frequency, unit)

For example:
    (1.0, Daily)
means a habit that should be done 1 time per day.

The provided function "conv" converts a RateUnit into a daily multiplier.

Your goal is to write functions that convert a list such as habits_rate
into a list of daily frequencies.

In other words, for each tuple (r, ru), the output should contain:

    r * conv ru

For example, the first two output values for habits_rate should be:

    [1.0, 0.42857146, ...]

Implement the following:

1. rec_version
   Use simple recursion.                                  [1 mark]

2. tail_version
   Use tail recursion.                                    [2 marks]

3. map_version
   Use the higher-order function map.                     [1 mark]

4. foldr_version
   Use the higher-order function foldr.                   [2 marks]

5. foldl_version
   Use the higher-order function foldl.                   [2 marks]

6. compr_version
   Use a single list comprehension.                       [1 mark]

All six functions must have the same type.
Write the type signature for at least one of them.        [1 mark]
-}

conv :: RateUnit -> Float
conv Daily  = 1.0
conv Weekly = 1 / 7

habits_rate :: [(Float, RateUnit)]
habits_rate =
  [ (1.0, Daily)
  , (3.0, Weekly)
  , (1.0, Weekly)
  , (3.0, Weekly)
  ]

-- Write your answers below:
rec_version = undefined

tail_version = undefined

map_version = undefined

foldr_version = undefined

foldl_version = undefined

compr_version = undefined


--------------------------------------------------
-- Task 3 -- 10 Marks
--------------------------------------------------
{-
This task is divided into three parts.
Write the most general type for all functions.

1. habits_count_curr                                      [2 marks]
   Write a function habits_count_curr that takes as input
   the number of days (a Float) since the habits were started and
   internally uses habits_rate from Task 2.

   It should return the number of times each habit should
   have been completed by that day.

   Example:
   If days = 2, the first two result values should be:

       [2.0, 0.8571429, ...]

2. off_track                                              [3 marks]
   The list habits_log contains the number of times each
   habit has actually been performed so far.

   Write a function off_track that:
   - takes the number of days since we started,
   - internally uses habits_count_curr and habits_log,
   - returns a list of booleans.

   A value should be True when the habit is off track,
   meaning the logged count is less than the expected count.

   Full marks are given if you use a where clause.

3. owed                                                   [5 marks]
   Each habit that is off track incurs a penalty of €5.

   Write a function that takes the number of days as input
   and computes the total penalty owed (a Float).
-}

habits_log :: [Float]
habits_log =
  [ 10
  , 20
  , 1
  , 2
  ]

-- Write your answers below:

habits_count_curr = undefined

off_track = undefined

owed = undefined