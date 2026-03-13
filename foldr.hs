-- the foldr (fold right) function is used to reduce a list to a single
-- value by combining its elements.

-- It's called foldr because 'fold from right'
-- foldr (+) 0 [1, 2, 3] will fold as -> (1+(2+(3+0)))

-- "f x (result of folding the rest)"

-- e.g foldr usage
foldrSum :: Num a => [a] -> a -- type checked by ':t sum' but foldr type 
                              -- is 'Foldable' instead of 'Num'
foldrSum numList = foldr (+) 0 numList -- foldr always needs a base number/value
                                       -- for its first calculation.
				       --
				       -- In this case, '0' is used as the
				       -- base number, and from there, the
				       -- list is folded from the right after
				       -- the function (+) is applied
				       --
				       -- e.g foldrSum [1..3] --> 3+(2+(0+1))


