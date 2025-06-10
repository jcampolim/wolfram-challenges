g[number_, list_]:= Module[{wordSize},
  If[number == 4,
    Append[list, 4],
    (
      wordSize = StringLength[IntegerName[number,"Words"]];
      g[wordSize,Append[list,number]] 
    )
  ]
];

IntegerNameSequence[n_Integer?Positive] := g[n,{}];
