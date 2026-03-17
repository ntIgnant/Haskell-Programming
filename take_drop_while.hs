-- takeWhile and dropWhile are both functions to work mainly with lists
-- takeWile selects elements from a list, while a predicate holds
-- dropWhile discards elements from a list, while a predicate holds

-- e.g
-- takeWhile "Walk from the front of the list, and stop forever the moment something fails"
-- So it is not 'for loop' like logic
keep_gt_5 :: [Int] -> [Int]
-- takeWhile (function) (arg)
keep_gt_5 xs = takeWhile (< 6) xs -- NOTE: The function will stop whenver the condition is not fullfiled
			          -- e.g (function) [1, 2, 3, 4, 5, 6, 7, 8]
				  -- the function will stop at [1, 2, 3, 4, 5] and ignore
				  -- the rest, even if the list is not sorted

get_first_evens :: [Int] -> [Int] -- Type definition
get_first_evens xs = takeWhile even xs -- NOTE: If the first element already fails, the result is []
				       -- For example, if the list is [1..5], the function will return
				       -- [] because 1 is odd

get_till_char :: String -> Char -> String -- Type definition
get_till_char myStr myCh = takeWhile (\myStr -> myStr /= myCh) myStr
			   -- Meaning: "Take characters from myStr while the condition (...) is true"

-- dropWhil
-- Similar to takeWhile, but drop
-- "drops the elements from the start, as long as the condition is true"

-- e.g
drop_evens :: [Int] -> [Int]
-- same structure:
-- 		  dropWhile (Boolean predicate) list | NOTE: the predicate needs to return a Bool
drop_evens xs = dropWhile even xs

keep_possi :: [Int] -> [Int] -- Type definition
keep_possi xs = dropWhile (\xs -> xs <= 0) xs -- drop while the items of the list are less or
					       -- euql to 0.


