my_take :: Int -> [Int] -> [Int] -- Type definition for the function
my_take x xs =
 if length xs <= x
  then xs -- return the list itself 
 else
  take x xs -- take the first x numbers of the list

my_drop :: Int -> [Int] -> [Int] -- Type definition for the function
my_drop x xs =
 if length xs <= x
  then xs -- return the list itself
 else
  drop x xs -- return the list without the first x elements

my_get :: Int -> [Int] -> Int
my_get x xs =
 if length xs <= x
  then x -- return the index as default (the function should return an Int)
 else
  xs !! x -- get the value at index x of the list | like 'xs[x]'

get_even_indices :: [a] -> [a] -- Type definition |a just means 'of the same type' in this case
get_even_indices xs =
 [x | (i, x) <- zip [0..] xs, even i] -- list comprehension | get the list with tuples with zip (index, value) and then filter just the even indices to build the list


 
