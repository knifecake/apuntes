---
title: FP summary
---

# Property based testing (QuickTest)

- The inner workings of QuickTest do not really matter. The important thing is
  coming up and writting properties to verify correctness.

- Remember to explicitly write the types of the predicates so that QuickCheck
  can provide appropriate examples.

# Lazy evaluation

## WHNF (= Weak Head Normal Form)

An expression is in WHNF if any of the following are true:

1. The expression is a **constructor**;
   - If the expression is a constructor that is being pattern matched on (e.g.
       a constructor inside a `case ... of`, then it will be reduced depending
       on the value of the constructor.
2. The expression is an **anonymous function**, i.e. a lambda expression;
   - If lambda is being applied to all of its arguments, then it is reduced
       depending on their value.
3. The expression is a **function applied to too few arguments**.


# Monads

## Do notation

- Remember that each do block maps to a monad, and some monads don't do what we
  intuitively think they do. Consider

    ```haskell
    a <- do f <- [1, 2]
            s <- ['a', 'b']
            return (f, s)

    a == [(1, 'a'), (2, 'b')]
    ```

    where the list monad comes into place (think of **list comprehensions** in
    this case).

