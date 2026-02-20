-- Basics of Lists and Tuples in Haskell
-- In a list, all the elements should be of the SAME TYPE
-- In a tuple, the elements can be DIFFERENT


-- e.g list
createNumList :: Int -> [Int]
createNumList x = [1..x] -- This will create a list from 1 to the input number

myNumList :: [Int] -- With type definition (good for copilers and debugging)
myNumList = [1, 3, 1, 3]

-- Tuples are fixed-size collection of values that can contain different types of vals
-- e.g tuple
myWierdTuple :: (Int, Bool, Char, String) -- Type definition (good for compilers and debuggin)
myWierdTuple = (1, True, 'A', "Oscar")

