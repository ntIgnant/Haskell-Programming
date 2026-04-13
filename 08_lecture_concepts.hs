-- IO Actions are meant to be used with input/output
--
-- Compared to pure functions e.g sym :: Int -> ...., an IO Action
-- returns a IO() 'wrapped' value because input/output values may
-- contain side effects (mainly because of the data types)

-- Pure functions take normal values and return normal values, with no effects.

-- Example of IO Action and do Notation (basic main function)
main :: IO() -- IO wrapper for datatype definition (handle datatype IO errors)
main = do
 putStrLn "Type your Name: "
 -- NOTE: '<-' is only allowed inside 'do notation'
 name <- getLine -- get input line (user name) and assign it to 'name' variable
 putStrLn ("Hey, " ++ name ++ " what's Up")
