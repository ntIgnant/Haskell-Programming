-- So in Haskell, variables are actually 'Constants' because they cannot change during the
-- program execution, so once a variable is assigned, it cannot change (not the value nor the type)


x = 5
-- x = 10 now, its not possible bc x is already assigned

y = x + 10 -- This should be the way for a new value assignation

-- The Different Datatypes in Haskell
z = 20
name = "Oscar"
flag = False

-- For naming, fucntions and variable names should begin with LOWERCASE letter
-- e.g X or 1value would be invalid (upper, and number character as firt char)

-- Differente between character (:: Char) and String (:: String)

myChar = 'A' -- myChar :: Char | assigned with single quote

-- An important fact about Strings, those are actually list of characters
myString = "Oscar" -- myString :: String | assigned with double quotes


-- Boolean Variables (constants in haskell btw)
myFlag = True -- myFlag :: Bool
mySecFlag = False -- mySecFlag :: Bool

-- Lists
numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
nameList = ["Pedro", "Pablo", "Ray"]

-- Lists can have multiple datatypes, but then it's better to deffine the actual types using type def
customList :: [Int, Bool, Char, String]
customList = [11, False, 'A', "Jose"]


