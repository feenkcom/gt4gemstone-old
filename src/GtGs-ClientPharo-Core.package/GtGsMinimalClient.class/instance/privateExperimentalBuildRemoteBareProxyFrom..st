private
privateExperimentalBuildRemoteBareProxyFrom: aString
	| computationString |
	
	computationString := String streamContents: [ :aStream | 
		aStream nextPutAll: ' | resultObject cacheDictionary occurences | '.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' resultObject := ( '.
		aStream nextPutAll: aString.
		aStream nextPutAll: ' ). '.
		
		aStream nextPut: Character cr.
		aStream nextPutAll: ' resultObject == nil ifTrue: [ ^ resultObject ]'.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' resultObject == true ifTrue: [ ^ resultObject ]'.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' resultObject == false ifTrue: [ ^ resultObject ]'.
		aStream nextPut: Character cr.
		{ 'ByteArray' . 'DoubleByteString' . 'DoubleByteSymbol' . 'QuadByteString' . 'QuadByteSymbol' . 
		  'String' . 'Symbol' . 'Unicode16' . 'Unicode32' . 'Unicode7' . 'Utf8'.
		  'SmallInteger'. 'SmallDouble' . 'Character'. 'SmallFraction' } do: [ :aClassString |
				aStream nextPutAll: '(resultObject class == ', aClassString ,') ifTrue: [ ^ resultObject ]'.
				aStream nextPut: Character cr ].
		
		aStream nextPutAll: 
'
cacheDictionary := SessionTemps current
  at: #''GtGs_BareProxy_ProxyCache''
  ifAbsent: [ SessionTemps current at: #''GtGs_BareProxy_ProxyCache'' put: Dictionary new].

occurences := cacheDictionary at: resultObject ifAbsent: [ cacheDictionary at: resultObject put: 0 ].
cacheDictionary at: resultObject put: occurences + 1.
^ resultObject
' ].
		