-- 'newtype' keyword  is used to create a datatype of strictly 1 type
-- newtype is 'computationally cheap'
newtype Age = Age Int -- Exactly one constructor (Age) and one field (Int)


-- 'data' keyword is used to create more 'complex' datatypes
-- It works as 'struct' in C (kind of)

data Person = Person String Int -- e.g Person Name Age

-- In Haskell, data can have multiple 'scenarios'
-- e.g
-- "Shape can be wither Circle (with float) OR Rectangle (Float and Float)"
data Shape = Circle Float | Rectangle Float Float -- the pipe means 'OR'
 deriving (Show) -- This tells the compiler how to represent the data
 		 -- __str__ like in python for Objects

-- NOTE: Functions start always in lowercase...

-- Each value represents a constructor
data UnderGrad = CompSci | Management | Media
 deriving (Show)

-- Exmaple Constructor with value
data Master = CyberSec Int | Business Int | Law Int
 deriving (Show)
