GetNewRow[s_List] := Module[{length},
  length = Length[s];
  Table[Mod[s[[i]] + s[[Mod[i + 1, length, 1]]], 10], {i, 1, length}]
  ]

Iteration[s_List] := Module[{newRow},
  newRow = GetNewRow[Last[s]];
  If[MemberQ[s, newRow],
   {newRow, Length[s]},
   Iteration[Append[s, newRow]]
   ]
  ]

RowAndIteration[list_] := Iteration[{list}]
RowAndIteration[{9, 4, 4, 6, 5}]