-- Records in Haskell
-- In haskell, a record is a way to define a data type with named fields

-- In the following example, 'Person' is the builder and the type data, to make it easier to follow
data Person = Person {pName :: String, pAge :: Int, pCountry :: String, pHeight :: Float}
 deriving (Show)

-- That is equivalent to:
data Persona = Persona String Int String Float
 deriving (Show)

-- So records are used whenever the strucutre of the data is more specific and long (more parameters)
