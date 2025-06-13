GetDistance[a_String, b_String] /; StringLength[a] == 1 && StringLength[b] == 1 :=
 Module[{codeA, codeB},
  codeA = First@ToCharacterCode[a];
  codeB = First@ToCharacterCode[b];
  
  (* get the distance based on the letters' code *)
  If[codeA == codeB,
   0,
   If[codeA <= codeB,
    Length[CharacterRange[a, b]] - 2,
    Length[CharacterRange[b, a]] - 2
    ]
   ]
  ]

OneFingerDistance[s_String?LowerCaseQ] :=
 Module[{chars = Characters[s]},
  If[
   Length[chars] < 2,
   0,
   GetDistance[chars[[1]], chars[[2]]] + 
    OneFingerDistance[StringJoin[Rest[chars]]]
   ]
  ]

OneFingerDistance["wolfram"]