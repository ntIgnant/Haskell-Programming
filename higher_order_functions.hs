-- A Higher order function in haskell, is one that takes a function as argument
-- and returns a function as result.

-- e.g
triple :: Num a => a -> a -- Type definifion
triple x = (*3) x -- This is the same as (*) 3 x
                  -- The operator (*) with the 3 is passed as argument
		  -- being (*3) 2 --> (*(3(2)))

-- Two different ways with slightly different logic
-- (*3) x - means -> x * 3
--       and
-- (3*) x - means -> 3 * x
--
--
-- So in this scenario, it worked the same (bc multiplication), but the order
-- of the operation is different NOTE


-- The map function
-- "apply a function to every element of a list, and return the altered list"

-- e.g
plusOne :: Num a => [a] -> [a] -- Type definition. List of class type Number
plusOne xs = map (+1) xs

subReverse :: [String] -> [String] -- Type definition, reverse the elements of a list of
                         -- strings. e.g "abc" -> "cba"

subReverse list = map reverse list -- "(* rev)" list, so the effect of the reverse
                                   -- will be applied to each of the strings
				   -- in the list
-- ZipWith function
-- "apply f to x and y"
-- e.g
summedLists :: Num a => [a] -> [a] -> [a]
summedLists xs ys = zipWith (+) xs ys -- Will return a list with the applied
                                      -- function to both elements of the list
				      -- at the same index.
				      --
				      -- NOTE: If one of the lists is shorter,
				      -- zipWith will stop as soon as one of
				      -- the two lists have no more index.


-- The filter function
-- 'filter' function keeps only the elements of a list which satisfies
-- a condition.


-- e.g filter function
getEvens :: Integral a => [a] -> [a] -- type definition, gets a list, and outputs
				-- a list with items that fulfill a condition

getEvens numList = filter even numList
