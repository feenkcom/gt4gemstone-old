category: 'Accessing'
method: Object
instVarNamed: aString
  "Return the value of the instance variable in me with that name.  Slow and unclean, but very useful. "

  ^ self instVarAt: (self class allInstVarNames indexOf: aString asSymbol)
%

method: 
value
  ^ self

%
