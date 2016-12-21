accessing
inspectorDataSizeInMemory
	| dataSizeInMemory |
	dataSizeInMemory := self physicalSize + title physicalSize + presentations physicalSize.
	presentations do: [ :aGsPresentation | 
		dataSizeInMemory := dataSizeInMemory + aGsPresentation inspectorDataSizeInMemory ].
	^ dataSizeInMemory