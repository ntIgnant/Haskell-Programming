-- TASK 1 --
-- "Maybe" always comes with "Just"

-- 7        -> normal number
-- Just 7   -> a Maybe containing 7

-- Structure of Maybe:
-- "Maybe is a wrapper that marks a value as either present (Just value) or absent (Nothing)"
--
-- data Maybe a = Nothing | Just a

maybeDefault :: a -> Maybe a -> a -- Type definiton for the function
maybeDefault x (Just y) = y -- Case where the 'Maybe container' Contains a valid y
maybeDefault x Nothing = x -- Case where the "Maybe Container" contains 'Nothing/Null' as y value (Print default value)

data Cmp = LESSER | EQUAL | GREATER -- data (struct like) 'lesser OR equal OR greater'
 deriving (Show)

compareOrd :: Ord a => a -> a -> Cmp -- Type dfinition (NOTE: last val is Cmp)
compareOrd x y
 | x < y = LESSER
 | x > y = GREATER
 | otherwise = EQUAL -- case where x == y

-- TASK 2 --
data UnderGrad = Accounting | Management | CompSci | Media -- Different Constructors
 deriving (Show)

data Master = DataScience | CyberSec | Business
 deriving (Show)

newtype Color = Color (Int, Int, Int) -- 1 Constructor 'Color' with val (...)
 deriving (Show)
-- Now, creation of the smart constructor
-- Smart Constructor is literally a function to create the instance
-- of the 'struct'/newtype/data based on logic
mkColor :: (Int, Int, Int) -> Maybe Color -- Return a 'Color' if everything goes fine
mkColor (r, g, b)
 | r >= 0 && r <= 255 &&
   g >= 0 && g <= 255 &&
   b >= 0 && b <= 255 = Just (Color (r, g, b))
 |otherwise = Nothing -- None/null if x not in range

data Person = Student String Int Int String
             | AcademicStaff String Int String
	     | ProfServices String Int String
	     | ContStaff String Float
 deriving (Show)

isStudent :: Person -> Bool -- Type definition, the function expects a 'type Person' as input
isStudent (Student _ _ _ _) = True
isStudent _ = False

personName :: Person -> String -- Type definition, the function expects a 'type Person' as input
personName (Student name _ _ _) = name
personName (AcademicStaff name _ _) = name
personName (ProfServices name _ _) = name
personName (ContStaff name _) = name
personName _ = "No Name"

-- data + smart constructor
data Student = CS | SE | Cyber | DS | Other
 deriving (Show) -- __str__ like in py

data Color2 = Blue (Int, Int, Int)
            | Red (Int, Int, Int) 
	    | Green (Int, Int, Int) 
	    | Purple (Int, Int, Int) 
	    | Gray (Int, Int, Int)
 deriving (Show) -- __str__ like in py

makeStudent :: Student -> Color2 -- Type definition, input of 'type Student' and output 'type Color2'

-- Logic flow using pattern matching
makeStudent CS = Blue (0, 0, 2055)
makeStudent SE = Red (255, 0, 0)
makeStudent Cyber = Green (0, 255, 0)
makeStudent DS = Purple (128, 0, 128)
makeStudent Other = Gray (200, 200, 200)

-- Database system for Uni
-- So I'll create two custom datatypes, a newtype for the database, and a data for each record

newtype Database = Database [StuRecord] -- Contructor DB builds a list containig a StuRecord type (tuple of int)

-- Smart Constructor for range of 0 - 100 for the grade
newtype StuRecord = Record (Int, Int) -- Where first Int is ID, and second Int is avrg grade (0 - 100)
 deriving (Show) -- for __str__ like in py

makeRecord :: (Int, Int) -> Maybe StuRecord
makeRecord (x, y)
 | y >= 0 && y <= 100 = Just (Record (x, y)) -- NOTE: Maybe always comes with 'Just()'
                                             -- And the value need to match the name of the CONSTRUCTOR,
					     -- not the name of the 'type value'
 | otherwise = Nothing -- Return null/None value

-- Helper function to add a record to the database
addRecord :: StuRecord -> Database -> Database
addRecord rec (Database records) = Database(rec:records) -- Append record to the db


findScoreById :: Int -> Database -> Maybe Int -- Type definition, may return St grade
findScoreById id (Database records) = findInRecords id records -- unwrap the list and pass it to another function

findInRecords :: Int -> [StuRecord] -> Maybe Int -- Type definition for the function
findInRecords _ [] = Nothing -- Basecase for the recursion
findInRecords sid (Record (id, score) : xs) -- pattern matching for each record in the list
					  -- IMPORTANT: ...:xs splits the list into two, xs being the
					  -- rest of the list
					  --
					  -- So xs (tail) is used in the 'otherwise' case

 | sid == id = Just (score) -- Case where the sid is found, then print the score
 | otherwise = findInRecords sid xs


-- TASK 3 --
-- Creation of a binary tree and then traversal sing DFS post-order

data BinTree = Node (IntTree Int) (IntTree Int) | Leaf Int -- using Node Constructor for node, OR using Leaf
                                               -- constructor for the leaf, which expects a type Int

-- Now, creation of function to traverse the binary tree in post-order using DFS
traverseTree :: BinTree
