-- IO Actions are meant to be used with input/output
--
-- Compared to pure functions e.g sym :: Int -> ...., an IO Action
-- returns a IO() 'wrapped' value because input/output values may
-- contain side effects (mainly because of the data types)

-- Pure functions take normal values and return normal values, with no effects.

{-
-- Example of IO Action and do Notation (basic main function)
main :: IO() -- IO wrapper for datatype definition (handle datatype IO errors)
main = do
 putStrLn "Type your Name: "
 -- NOTE: '<-' is only allowed inside 'do notation'
 name <- getLine -- get input line (user name) and assign it to 'name' variable
 putStrLn ("Hey, " ++ name ++ " what's Up")
-}

-- So for functions that contain IO() 'IO Actions' a 'return' or 'pure' is supposed to exis
-- to 'turn' the datatype into IO type. A function that gets IO, should always return IO type

-- So all the functions with ... :: IO()

{-
main :: IO() -- Function Type definition | IO Action (takes input and treats the values as 'special')
main = do
 putStr "Hello" -- print like
-}

{-
main :: IO() -- Function type definition | IO Action (takes input and 'encapsulates' the IO vals)
main = do
 putStr "Type your username: "
 username <- getLine -- Get line from input, and assign the value to var 'username'
 
 putStr "Now, please enter a Password: "
 password <- getLine -- Get line frm input, and assign the value to var 'passwor'

 putStr ("Welcome " ++ username ++ " your password is " ++ password)
-}

-- Okay so for the previous examples, return/pure was not needed because putStr handles the
-- 'IO conversion' automatically, but for the most of the cases, we need to convert the value
-- manually to 'IO type', we do that conversion by using 'return' or 'pure' delcaration

main :: IO() -- Functioin type deflcaration | IO Action (Takes input and 'encapuslates' the IO value)
main = do
 input <- getLine
 let secretPassword = "holabola"
 if input != secretPassword
