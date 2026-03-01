-- Create a function that returns a Fractional value, to be performed with (/) operator
my_len :: Num n => [a] -> n -- Typeclass 'Num' for n, so (Int, Float, and arithmetic allowed)

my_len [] = 0 -- ???
my_len (_:xs) = 1 + my_len xs -- ignore the first value, and return a plus 1, and updated xs (recursion)
			      -- This will create a 'counter' of the length of the list

avrg :: Fractional a => [a] -> a
avrg xs = sum xs / my_len xs

