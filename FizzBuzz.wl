FizzBuzzAux[n_Integer] :=
 Which[
  Mod[n, 15] == 0, "fizzbuzz",
  Mod[n, 3] == 0, "fizz",
  Mod[n, 5] == 0, "buzz",
  True, n
 ]

FizzBuzz[n_Integer] /; n > 0 :=
 If[n == 1,
  {1},
  Append[FizzBuzz[n - 1], FizzBuzzAux[n]]
 ]

 FizzBuzz[20]