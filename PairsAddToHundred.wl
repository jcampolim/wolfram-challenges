(* search for all the occurences of 100 - n in the given list *)
GetSublists[n_Integer, s_List] := Map[Sort[{n, #}] &, Cases[s, 100 - n]]

PairsAddToHundred[inputList_List] :=
 If[Length[inputList] == 0,
  {},
  Join[
   GetSublists[First[inputList], Rest[inputList]],
   PairsAddToHundred[Rest[inputList]]
   ]
  ]

PairsAddToHundred[{28, 34, 84, 57, 55, 0, 27, 105, 131, 1, 95, 76, 
  190, 16, 142}]