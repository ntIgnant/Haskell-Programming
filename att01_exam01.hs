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

-- Answer: yes/No ????


-- 2. Is the following function tail recursive?

mysterious [] = -10
mysterious (x:xs) = x + mysterious xs

-- Answer: No


-- The remaining three questions are based on the following type:

data MyNumber = Nice Int | Ugly Int MyNumber
  deriving (Show)

-- 3. Is the above type recursive?
-- Answer: Yes

-- 4. Is the above type polymorphic?
-- Answer: Yes

-- 5. Consider two values, a and b, of type MyNumber.
-- Would the expression a == b result in an error?
-- Answer: Yes



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
least one of tdot_prod::[Num] -> [Num] -> Num ahem.                                             -- 1 mark

You may use the predefined function:

abs :: Num a => a -> a
-}


rec_version :: Num a => [a] -> a -- Type definition
rec_version [] = 0 -- base case
rec_version (x:xs) = abs x + rec_version xs

tail_version :: Num a => [a] -> a -- Type defintion
tail_version [] = 0 -- Base case | list after 'breakdown'
tail_version (x:xs) = tail_version xs + abs x

map_version :: Num a => [a] -> a
map_version xs =
 let abs_list = map abs xs -- this returns a list with absolute values
 			   -- NOTE: map expects 
 in sum abs_list

foldr_version :: Num a => [a] -> a -- Type definition
foldr_version xs = foldr ((+) . abs) 0 xs

foldl_version :: Num a => [a] -> a -- Type definition
foldl_version xs = 
 let rev = reverse xs
 in foldl ((-) . abs) 0 rev

compr_version :: Num a => [a] -> a -- Type definition
compr_version xs = 
 let lista = [abs x | x <- xs]
 in sum lista


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

-- Exercise 1.)
dot_prod :: [Int] -> [Int] -> Int -- Type definition
dot_prod xs ys =
 let lista = zipWith (*) xs ys -- create a combineation of [x0*y8, x1*y2,...]
 in sum lista


-- Exercise 2.)
dot :: [Int] -> [Int] -> Int
dot xs ys = sum (zipWith (*) xs ys) -- Dot product of two lists

correlation :: [Int] -> [Int]
correlation zs = trav zs (length zs)
 where
  -- 'trav' function definition as 'local variable'
  trav _ 0 = []
  trav ls n = dot zs ls : trav (shift ls) (n - 1) 

