*test_gsinspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	aPresentation crLog.
	 aPresentation
		shouldValidate: false;
		allowsRecursiveSearch: false;
		icon: [ Smalltalk ui icons iconNamed: #classIcon ];
		title: [
			self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #computeTitle ] ];
		display: [ 
			self cacheAt: #'displayValues' ifAbsentPut: [ self executeRemotely: #'computeDisplayValues' ] ];
		"icon: [ 
			self cacheAt: #'icon' ifAbsentPut: [ self executeRemotely: #'computeDisplayValues' ] ];"
		format: [ :anAssociation | 
			anAssociation value ];
		send: [ :anAssociation ||serializedProxy|
			serializedProxy := self gemstoneClient session executeString: '
				GtGsInspectorProxy1 
					serializeInstance: (GtGsInspectorProxy1 forOop: ' , anAssociation key asString , ' )'.
			self gemstoneClient objectSerializer fromString: serializedProxy ]