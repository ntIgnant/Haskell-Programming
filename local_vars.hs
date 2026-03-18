-- Local variables in haskell using 'let..in' and 'where'
-- Literally just local variables

-- let..in (expression-based)
-- let..in produces a value
-- let <definition> in <expression>
--
-- e.g
a_sum :: Int
a_sum =
 -- Part of variable definition
 let 
  x = 5
  y = 10

 -- part of 'expression'
 in x + y

-- where (declaration based)
-- <function> = <expression>
-- 	where 
-- 	    <definition>

-- e.g with where
b_sum :: Int
b_sum = a + b
 where
  a = 10
  b = 11
