override
dotSelfLiteralArray
  | litVarArray tempNames |
  litVarArray := {}.
  tempNames := self argAndTempNames.
  1 to: tempNames size do: [ :index | | tempVar |
    tempVar := (tempNames at: index) asSymbol.
    litVarArray
      add: tempVar;
      add:
          (SymbolAssociation newWithKey: tempVar value: (self argAndTempNamesAt: index)) ].
  ^ litVarArray