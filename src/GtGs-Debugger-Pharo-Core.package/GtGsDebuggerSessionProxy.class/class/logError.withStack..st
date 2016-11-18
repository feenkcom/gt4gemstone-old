as yet unclassified
logError: errorMessage withStack: aGemstoneStack

	" we should think about integrating a toothpick here someday"
	Smalltalk logStdErrorDuring: [ :stderr|
		"install the line end conversion and force initialize the converter"
		stderr
			nextPutAll: errorMessage; cr;
			"reset the color"
			nextPut: Character escape; nextPutAll: '[0m'.
		aGemstoneStack frames do: [ :aFrame |
			stderr nextPutAll: aFrame cachedFrameLabel.
			stderr cr ] ].
				
	Smalltalk logDuring: [:logger | 
		logger	
			nextPutAll: 'THERE_BE_DRAGONS_HERE'; cr; 
		  	nextPutAll: errorMessage; cr.
			self logSystemDetailsOn: logger.
			aGemstoneStack frames do: [ :aFrame |
				logger nextPutAll: aFrame cachedFrameLabel.
				logger cr ].
		" write some type of separator"
		logger nextPutAll: (String new: 79 withAll: $- ); cr; cr]