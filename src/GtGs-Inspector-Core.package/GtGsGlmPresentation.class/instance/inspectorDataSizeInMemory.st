accessing
inspectorDataSizeInMemory
	| dataSizeInMemory cachedDisplayValue |
	dataSizeInMemory := self physicalSize + self cache physicalSize.  
	cachedDisplayValue := self cacheAt: #displayValue ifAbsent: [ ^ dataSizeInMemory ].
	
	dataSizeInMemory := dataSizeInMemory + cachedDisplayValue physicalSize.
	cachedDisplayValue do: [ :aNode |
		aNode ifNotNil: [ dataSizeInMemory := dataSizeInMemory + aNode inspectorDataSizeInMemory ] ].
	^ dataSizeInMemory