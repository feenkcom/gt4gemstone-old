remote - logic
classesForSystemDictionaryLogic
	
	^ [ :currentSystemDictionaryName | 
			((GsSession currentSession symbolList asArray
 				detect: [ :each | each name = currentSystemDictionaryName asSymbol ])
					select: [ :each | each isBehavior ])
						sortWithBlock: [ :a :b | a name < b name ] ]