accessing
inspectorDataSizeInMemory
	| dataSizeInMemory |
	dataSizeInMemory := super inspectorDataSizeInMemory.
	childNodes ifNotNil: [ 
		dataSizeInMemory := dataSizeInMemory + childNodes physicalSize.
		childNodes do: [ :aNode |
			dataSizeInMemory := dataSizeInMemory + aNode inspectorDataSizeInMemory ] ].
	columnValues ifNotNil: [ 
		dataSizeInMemory := dataSizeInMemory + columnValues physicalSize.
		columnValues do: [ :aValue |
			dataSizeInMemory := dataSizeInMemory + aValue physicalSize ] ].
	^ dataSizeInMemory