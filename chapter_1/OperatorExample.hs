module OperatorExample where
-- Custom Operator defined as function
-- (+++) a b = a + b
-- infix version
infix 7 +++
a +++ b = a + b

---
infixl 7 ++++
a ++++ b = a + b

infixl 7 ****
a **** b = a * b

infixr 7 +++++
a +++++ b = a + b

infixr 7 *****
a ***** b = a * b
