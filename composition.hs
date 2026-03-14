-- The function (.) returns the composition of two functions as a single function
-- Type definition :t
-- (.) :: (b -> c) -> (a -> b) -> a -> c


-- e.g using composition
customOdd :: Int -> Bool
customOdd = not . even -- Here, the function 'not' and 'even' are combined
                         -- with (.) to create a composition



