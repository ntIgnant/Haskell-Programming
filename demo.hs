traverse_print :: [Int] -> [Int]
traverse_print [] = [] -- Base case for the recursion
traverse_print (x:xs) = print x : traverse_print xs
