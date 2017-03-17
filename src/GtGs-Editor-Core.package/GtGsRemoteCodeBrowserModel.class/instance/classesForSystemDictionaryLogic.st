remote - logic
classesForSystemDictionaryLogic
	
	^ [ :currentSystemDictionaryName | 
			(((GsSession currentSession symbolList asArray
 				detect: [ :each | each name = currentSystemDictionaryName asSymbol ])
					select: [ :each | each isBehavior ]) asArray collect: [ :each | each name ])
						sortWithBlock: [ :a :b | a < b ] ]