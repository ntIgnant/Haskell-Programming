import Data.Char (toUpper)
import Data.List

-- Haskell Libraries
-- Major top-level categories include:
-- 	Control: control flow related functions
-- 	Data: e.g types, trees, maps, graphs
-- 	Foreign: Anything to do with interaction with other languages
-- 	GHC: Modules for the compiler
-- 	System: Modules to interact with the OS
-- 	Text: Alternative ways to represent text/strings associated functions


-- E.g Data
main :: IO()

main = do
 let myName = "oscar"
 putStrLn (map toUpper myName) -- use map because 'toUpper' applies only to char (no whole string)


-- Exceptions
