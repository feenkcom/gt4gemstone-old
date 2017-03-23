*GtGs-Inspector-Core
gtGsReversed
  | n result src |
  n := self size.
  result := self species new: n.
  src :=  n + 1.
  1 to: n do: [ :i | result at: i put: (self at: (src := src - 1)) ].
  ^ result