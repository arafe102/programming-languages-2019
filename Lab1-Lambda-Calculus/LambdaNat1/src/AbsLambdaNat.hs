-- Haskell data types for the abstract syntax.
-- Generated by the BNF converter.

module AbsLambdaNat where

newtype Id = Id String
  deriving (Eq, Ord, Show, Read)

data Program = Prog Exp
  deriving (Eq, Ord, Show, Read)

data Exp = EAbs Id Exp | EApp Exp Exp | EVar Id | ENat Nat
  deriving (Eq, Ord, Show, Read)

data Nat = Nat0 | NatS Nat
  deriving (Eq, Ord, Show, Read)

