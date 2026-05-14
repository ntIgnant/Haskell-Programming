-- Prelude List functions

-- 1. Return the First Element of the list
return_head :: [Int] -> Int -- Function Type declaration
return_head xs = head xs -- xs being the list (argument)

-- 2. Return the list without the first element
return_tail :: [Int] -> [Int]
return_tail xs = tail xs -- xs being the list (passed arg)

-- 3. Return the length of the List
return_length :: [Int] -> Int -- Type definition
return_length xs = length xs

-- 4. Return the last element from the list (NOT SURE)
return_last :: [Int] -> Int
return_last xs =
    let last_inx = length xs
        in xs !! (last_inx - 1)

rec_return_last :: [Int] -> Int -- Type definition
rec_return_last [x] = x -- If the imput list has EXACTY ONE element, return it
rec_return_last (_:xs) = rec_return_last xs -- call recursion again
                                            -- (x:xs) traverses the whole list, and usses the recurtsion call at the end to evaluate the single element 'Last element'

-- 5. Return the list without its final element
return_without_final :: [Int] -> [Int]
return_without_final xs =
    do (
        let last_inx = length xs
        in let val_to_remove = xs !! (last_inx - 1)

        in drop val_to_remove xs
    )

rec_return_without_final :: [Int] -> [Int]
rec_return_without_final 