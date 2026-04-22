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

{-
main :: IO() -- Functioin type deflcaration | IO Action (Takes input and 'encapuslates' the IO value)
main = do
 input <- getLine
 let secretPassword = "holabola"
 if input /= secretPassword -- in haskell, '!=' -> '/='
  then putStrLn "Wrong Password"
  
  -- Case where input == secretPassword
  else putStrLn "Access Granted"

-- For if statements, if initializes the expression, folowed by and then, and else
-- if
--  then
--  else
-}

-- Okay, so now I need to create a script that gets user data (e.g name, age, password, etc) using main
-- and specific functions for each of the input values

{-
get_username :: IO String -- Function definition | IO String datatype (get and return)
get_username = do
 input <- getLine
 return input -- Return the username (IO String type)

get_userage :: IO Int -- function type definition | IO Int datatype
get_userage = do
 ageVal <- getLine -- Get the user age from input
 return (read ageVal) -- Return the age to the caller (IO Int)

get_userpassword :: IO String -- function type definition | IO String datatype
get_userpassword = do
 pssVal <- getLine -- Get user password from input
 return pssVal -- Return the password to the caller (IO String)
-}

{-

main = do
 putStrLn "Hey, please type your username: "
 
 username <- get_username -- call function to get the username
 
 putStrLn ("Got it " ++ username)
 putStrLn "Now, please enter your Age: "

 userage <- get_userage

 putStrLn ("Okay so you are " ++ (show userage) ++ " years old, quite old ngl")
 putStrLn "Enter your last password: "

 userpss <- get_userpassword

 -- Assignation of user lasts password
 let stored_password = "pilin" -- in this case 'let' doesn't require an 'in' because 'in' is only
                               -- required when there is no 'do', so:
			       -- 	let ... in
			       -- 	do ... let (no need of in)

 if userpss /= stored_password
  then putStrLn "WRONG PASSWORD"
    
  else putStrLn "ACCESS GRANTED"

-}

-- About IO() type definition

-- IO String → reads input, produces a String
-- IO Int → does IO, produces an Int
-- IO () → does IO, produces nothing meaningful

-- Create a program that prompts the user to enter a value in centimeters, and returns the converted
-- value into inches

{-
get_usercm :: IO Float -- Function type definition | gets the value of the user (as IO Int)
get_usercm = do
 val <- getLine -- get user input
 return (read val) -- return the value to the caller (type IO Int)


-- So basically I can use '<-' variable assignation if I'm using 'do'
main = do
 putStrLn "Please enter a value in cm: "
 usercm <- get_usercm -- get the value of the user from input

 -- Now, convert the usercm into inches
 let inchesVal = usercm / 2.54 -- may have a problem with the datatype (Float?)
 putStrLn ((show usercm) ++ "cm are " ++ (show inchesVal) ++ " inches.")

-}

-- Menu Driven Program Creation
-- Clarifications:
-- 	IO a = a recipe for doing something
--      do = how you combine multiple steps into one recipe
--

show_options :: IO() -- Type definition | IO type because It will just print out a value
show_options = do

 -- Options of the Menu Program
 putStrLn "1) Push a number on the Stack"
 putStrLn "2) Add the top two numbers on the stack"
 putStrLn "3) Print all the values on the stack"
 putStrLn "4) Exit"

main :: IO() -- Type definition | IO() because ... 
main = do
 let index_list = [x | x <- [1..4]] -- list for the available indexes (for error handling)
 -- list comprehensions Structure:
 -- 	myList = [expression | generator, conditions]

 show_options -- Call function to print the menu options

 putStr "\nSelect an option (index): " -- putStr used instead of putStrLn to avoid newline-char
 user_option <- getLine -- '<-' allowed because 'do' is being used
 
 -- Convert the user_option into int datatype
 let int_option = read user_option :: Int

 -- Error handling for input (index boundaries)
 if int_option < 1 || int_option > 4
  then putStrLn "Invalid Option (out of range)"
  
  else putStrLn (user_option)

