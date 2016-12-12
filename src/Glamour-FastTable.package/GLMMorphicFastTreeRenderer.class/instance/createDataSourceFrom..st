initialization
createDataSourceFrom: aPresentation
	^ aPresentation columns 
		ifEmpty: [ GLMFastTreeDataSource new ]
		ifNotEmpty: [ GLMFastTreeTableDataSource new ]