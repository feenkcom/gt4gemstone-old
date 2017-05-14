*GtGs-Inspector-Core
gtGsParseSelector: methodString for: aBehavior
	"Method copied from 'Behavior class>>parseSelector:for:'"
  | mDict cDict meth undefinedSymbolList |
  mDict := GsMethodDictionary new.
  cDict := GsMethodDictionary new.
  undefinedSymbolList := GsSession currentSession symbolList
    objectNamed: #'UndefinedSymbolList'.
  undefinedSymbolList == nil
    ifTrue: [ undefinedSymbolList := SymbolList new ].
  meth := aBehavior
    _primitiveCompileMethod: methodString
    symbolList: GsSession currentSession symbolList , undefinedSymbolList
    category: #'xxxyyz'
    oldLitVars: nil
    intoMethodDict: mDict
    intoCategories: cDict
    intoPragmas: nil
    environmentId: 0.
  meth class ~~ GsNMethod
    ifTrue: [ "if error slot is nil, then the method wasn't compiled because of errors"
      (meth at: 2) == nil
        ifFalse: [ ^ nil ].
      meth := meth at: 1 ].
  ^ meth selector asString