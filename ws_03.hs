-- TASK 1
-- Create a function that returns a Fractional value, to be performed with (/) operator
my_len :: Num n => [a] -> n -- Typeclass 'Num' for n, so (Int, Float, and arithmetic allowed)

my_len [] = 0 -- ???
my_len (_:xs) = 1 + my_len xs -- ignore the first value, and return a plus 1, and updated xs (recursion)
			      -- This will create a 'counter' of the length of the list

avrg :: Fractional a => [a] -> a
avrg xs = sum xs / my_len xs

-- TASK 2
mins :: Ord a => (a, a, a) -> a
mins (x, y, z) =
 min x (min y z) -- Get the minimum value of the triple

maxs :: Ord a => (a, a, a) -> a
maxs (x, y, z) =
 max x (max y z) -- Get the maximum value of the triple

avg_grade :: Fractional a => [a] -> a -- [a] means 'list of elements of type 'a''
avg_grade [x, y, z] =
 sum [x, y, z] / 3 -- Average grade

min_max_avg :: (Ord a, Fractional a) => (String, a, a, a) -> (String, a, a, a)
min_max_avg (name, v1, v2, v3) =
 -- let is used once, to declare local variables, and it must be finished with 'in', to show the final destination of those vals

 let
  maxVal = maxs (v1, v2, v3)
  minVal = mins (v1, v2, v3)
  avgGrade = avg_grade [v1, v2, v3] -- this shoudl return the average grade

 -- Return the values as quatruple with the name (string)
 in
  (name, minVal, maxVal, avgGrade)

student_grades = ("Alice", 85, 55, 62.5) -- These are just the grades of one student (for now)

-- Function call
result = min_max_avg student_grades

