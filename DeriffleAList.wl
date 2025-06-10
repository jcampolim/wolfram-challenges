Deriffle[s_List] := Module[{result},
  If[Length[s] == 0,
   {{}, {}},                         (* base case: if the list is empty *)
   If[Length[s] == 1,
    {{First[s]}, {}},                (* if the list has one element *)
    result = Deriffle[Drop[s, 2]]; 
    {
     Prepend[result[[1]], s[[1]]],
     Prepend[result[[2]], s[[2]]] 
    }
  ]
 ]
]

Deriffle[{0, 1, 0, 1, 0, 1, 0, 1, 0, 1}]