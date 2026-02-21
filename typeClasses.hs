-- In Haskell, a type class is a group of types that support certain operations
-- "All types that belong to this class, can do these things"

-- Example of infix function:
--
-- + is (x) | in haskell, native operators should be wrapped up in parenthesis
-- for the compiler to treat them as functions instead of operators.

(+) :: Num a => a -> a -> a -- In this case, the 'Num' is a type class
                            -- which basically works as a contract, saying:
			    -- "This fucntion works for any type a that belongs to Num class"
			    -- Examples of Types inside Num: Int, gloat, double, Integer

-- So type classes is like saying
-- class Num, and a new instance of that class can be Int, so Int will be of Num class-type


