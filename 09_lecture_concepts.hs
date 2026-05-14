import Data.Char (toUpper)
import Data.List
import Data.Maybe
import Control.Exception -- For runtime erros 'catching'

-- Haskell Libraries
-- Major top-level categories include:
-- 	Control: control flow related functions
-- 	Data: e.g types, trees, maps, graphs
-- 	Foreign: Anything to do with interaction with other languages
-- 	GHC: Modules for the compiler
-- 	System: Modules to interact with the OS
-- 	Text: Alternative ways to represent text/strings associated functions


-- [Data]

-- e.g Data.Char usage 'toUpper'
{-
main :: IO()

main = do
 let myName = "oscar"
 putStrLn (map toUpper myName) -- use map because 'toUpper' applies only to char (no whole string)
-}

-- e.g Data.List usage (sorting a list)
{-
sortList :: [Int] -> [Int] -- Type Definition
sortList xs =
 sort xs -- sorted list
         -- use 'sort' wich comes in Data.List

main :: IO()
main = do -- use 'do' to do a sequence of things in main
 putStr "Please Enter a list of Numbers: "
 user_list <- getLine -- Get line from input

 let sorteado = sortList(map read (words user_list))

 putStrLn ("Your Sorted List is: " ++ show sorteado)
-}

-- e.g Data.Maybe
-- Data.Maybe does a safe 'error handling' for missing data/type

{-
getUserage :: String -> Maybe Int -- Type definition | Using 'maybe' to handle input type errors
getUserage input = readMaybe input -- readMaybe is a 'safe' version of 'read' that works with the Maybe val

main :: IO()
main = do
 -- Get 'Maybe' userAge with function
 putStr "Please Enter your Age: "
 user_input <- getLine

 -- Handle input type error with the getUserage function
 let age = getUserage user_input

 putStrLn $
  maybe
   "Invalud Input"

   (\a -> "The Age of the User is " ++ show a)
   age
-}


-- Exceptions
-- In Haskell, there are two scenarios (types) of errors
-- 	Exeptional errors (Runtime Errors) - unusual failures that interrupt execution
-- 	Pure errors (Expected Errors) - "this computation might fail" but are expected in the logic
--
--
-- Exeptional errors (catch)

-- The Structure of catch: catch action handler

-- e.g catch
{-
main :: IO()
main = do
 
 let my_num = 5

 putStr "Please enter a number (5/x): "
 user_input <- getLine

 -- Handle the error if x = 0
 catch
  (do
   let result = my_num `div` (read user_input)
   print result
  )

   handler -- call handler as fallback (if there is an error like zero division)


handler :: ArithException -> IO() -- treat handler as a function | using type declaration as the err
handler e =
 putStrLn "Arithmetic Error | Cannot divide by zero!"

-}

