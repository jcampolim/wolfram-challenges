GetOdd[s_List] := Select[s, OddQ]
GetEven[s_List] := Select[s, EvenQ]

OddBeforeEven[list : {__Integer}] := Join[GetOdd[list], GetEven[list]]

OddBeforeEven[{-1, 2, 8, -9, -2, -3, -6, -10, -8, 5, 7, 9, 7}]