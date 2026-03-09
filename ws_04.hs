-- TASK 1 --
isEven :: Integral a => a -> Bool -- type definition for the function
isEven x
 | x `mod` 2 == 0 = True
 | otherwise = False

splitAtN :: Int -> [a] -> ([a], [a]) -- type definition. Reeturn a tuple containing TWO lists
splitAtN x xs =
 (take x xs, drop x xs)

reciprocal :: Fractional a => a -> a -- Type definition. (not sure about the type class for '/')
reciprocal x = 1 / x

-- TASK 2 --
gradeStudent :: (Ord a, Num a) => a -> String -- Type definition
gradeStudent x
 | x >= 90 && x < 101 = "A"
 | x >= 80 && x < 90 = "B"
 | x >= 70 && x < 80 = "C"
 | x >= 60 && x < 70 = "D"
 | x < 60 = "F"
 | otherwise = "Grade out of Range" -- Handler in case the grade is out of range

-- Same Function as before but with if statement instead of 'guards'
gradeStudentIf :: (Ord a, Num a) => a -> String
gradeStudentIf x =
 if x >= 90 && x <= 100 then "A"
 else if x >= 80 then "B"
 else if x >= 70 then "C"
 else if x >= 60 then "D"
 else if x >= 0 then "F"
 else "Grade out of Range" -- Case where the grade is e.g 104


-- TASK 3 --
multiply :: Num a => (a, a, a) -> a
multiply (x, y, z) = x * y * z -- Internally: (x * (y * z)) example of curried function

doubleAndMultiply :: Num a => (a, a, a) -> a
doubleAndMultiply (x, y, z) = multiply (x * 2, y, z)

powerOf :: Num a => Int -> a -> a
powerOf x y = (product (replicate x y))

-- square, cube, and fourthPower.
square :: Num a => a -> a
square z = powerOf 2 z

cube :: Num a => a -> a
cube z = powerOf 3 z

fourth :: Num a => a -> a
fourth z = powerOf 4 z

--TASK 4 --
head :: 
