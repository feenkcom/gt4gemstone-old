*test_gsinspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	
	 aPresentation
		title: [ 
			self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #title ] ];
		display: [ 
			self cacheAt: #'displayValues' ifAbsentPut: [ self executeRemotely: #'computeDisplayValues' ] ];
		format: [ :anAssociation | 
			anAssociation value ];
		send: [ :anAssociation ||serializedProxy|
			serializedProxy := self gemstoneClient session executeString: '
				GtGsInspectorProxy1 
					serializeInstance: (GtGsInspectorProxy1 forOop: ' , anAssociation key asString , ' )'.
			self gemstoneClient objectSerializer fromString: serializedProxy ]