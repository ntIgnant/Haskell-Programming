-- Type definitions of the functions that will be used

custom_div :: Num a => a -> a -> Float -- Type 're-definition' for division (/)
my_len :: [Int] -> Int -- Type definition list of Int -> Int

custom_div x y = x / y -- this basically re-defines the 
my_len xs = length xs --  get the length of the list

magic_function xs =
 (sum xs) / (my_len xs) -- perform the 'average'


