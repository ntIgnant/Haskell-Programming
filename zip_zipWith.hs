-- zip and zipWith in Haskell
-- Both work for list 'combination'


-- zip takes two lists, and combines them into a list of tuples (paris)
-- e.g

test_zip :: [(Int, Int)] -- Type definition
test_zip =
 -- Variable declaration with 'let'
 let xs = [0, 1, 2, 3, 4]
     ys = [10, 11, 12, 13, 14]

 in zip xs ys -- expression

-- zipWith takes a function and two lists, and generates a combined list with the applied function
-- zipWith returns a list of 'results', not a list of tuples
-- zipWith (function) (list1) (list2)
-- e.g zipWith
test_zipWith =
 -- Variable declaration
 let as = [1, 2, 3, 4]
     bs = [5, 6, 7, 8]
 -- Expression
 in zipWith (*) as bs
