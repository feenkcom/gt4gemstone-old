*GtGs-Inspector-Core
gtGsLookupSelector: selector
  "Look up the given selector in my methodDictionary.
	Return the corresponding method if found.
	Otherwise chase the superclass chain and try again.
	Return nil if no method is found."

  | lookupClass |
  lookupClass := (Reflection classOf: self).
  [ lookupClass == nil ]
    whileFalse: [ 
      (lookupClass includesSelector: selector)
        ifTrue: [ ^ lookupClass compiledMethodAt: selector ifAbsent: [ nil ] ].
      lookupClass := lookupClass superclass ].
  ^ nil