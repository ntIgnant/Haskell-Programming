--------------------------------------------------
-- Task 1 -- 10 Marks
--------------------------------------------------
{-
Each of the following questions is worth 2 marks.
Select Yes or No for each one.
-}

-- 1. Is the following function total?

fun x
  | x >= 10 = x + 1
  | x >= 0  = x + 2

-- Answer: yes/No


-- 2. Is the following function tail recursive?

mysterious [] = -10
mysterious (x:xs) = x + mysterious xs

-- Answer: Yes/No


-- The remaining three questions are based on the following type:

data MyNumber = Nice Int | Ugly Int MyNumber
  deriving (Show)

-- 3. Is the above type recursive?
-- Answer: Yes/No

-- 4. Is the above type polymorphic?
-- Answer: Yes/No

-- 5. Consider two values, a and b, of type MyNumber.
-- Would the expression a == b result in an error?
-- Answer: Yes/No



--------------------------------------------------
-- Task 2 -- 10 Marks
--------------------------------------------------
{-
Consider a function that takes a list of integers as input
and returns a list containing their absolute values.

Implement this function using different approaches.

1. Implement 'rec_version' using simple recursion.             -- 1 mark
2. Implement 'tail_version' using tail recursion.              -- 2 marks
3. Implement 'map_version' using the higher-order
   function 'map'.                                             -- 1 mark
4. Implement 'foldr_version' using the higher-order
   function 'foldr'.                                           -- 2 marks
5. Implement 'foldl_version' using the higher-order
   function 'foldl'.                                           -- 2 marks
6. Implement 'compr_version' using a single list
   comprehension.                                              -- 1 mark

All functions MUST have the same type. Write the type for at
least one of them.                                             -- 1 mark

You may use the predefined function:

abs :: Num a => a -> a
-}


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
This task is divided into two parts. You are required to
write the most general type for all your functions.

1. Write a function called 'dot_prod' that takes two lists
   of numbers and returns the sum of their pairwise
   multiplications.                                           -- 4 marks

   For example, given the lists [1,2,3] and [3,2,1], it returns:

   1*3 + 2*2 + 3*1 = 10

2. Write a function called 'correlation' that takes a list of
   integers as input and returns a list containing the dot
   products of the list with all cyclic shifts of itself.

   The shift function is already provided and it moves the first
   element to the end of the list.                            -- 6 marks
-}

shift :: Num a => [a] -> [a]
shift [] = []
shift (x:xs) = xs ++ [x]

