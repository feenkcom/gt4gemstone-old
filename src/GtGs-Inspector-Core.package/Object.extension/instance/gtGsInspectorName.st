*GtGs-Inspector-Core
gtGsInspectorName
  | ws contents |
  ws := PrintStream printingOn: String new "maxSize: 100".

  [ self printOn: ws ] 
	on: Error 
	do: [ ^ '<error printing>' ].
  contents := ws _collection.

  ^ contents size > 200
    ifTrue: [ (contents copyFrom: 1 to: 200) , '...' ]
    ifFalse: [ contents ]