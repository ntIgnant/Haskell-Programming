-- In Haskell, there are no traditional if statements. Instead, everything is an expression that returns
-- a value.

-- basic syntax:

-- if condition
--    then value1
--    else value2

-- IMPORTANT: In haskell, an if statement should always contain an else, otherwise there will be
-- a syntax error

-- e.g function with if statement
magic :: Int -> Bool -- type definition, an int as arg, and return a boolean

-- IMPORTANT: Indentation is better with spaces than with tabs here
magic x =
 if x > 10
  then False
 else
  True


