*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	 aPresentation
		shouldValidate: false;
		allowsRecursiveSearch: false;
		title: [
			self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #computeTitle ] ];
		display: [ 
			self cacheAt: #'displayNodes' ifAbsentPut: [ self executeRemotely: #'computeDisplayNodes' ] ];
		icon: [ :aListNode | 
			aListNode iconId   
				ifNotNil: [ Smalltalk ui icons iconNamed: aListNode iconId ] ];
		format: [ :aListNode | 
			aListNode displayValue ];
		send: [ :aListNode ||serializedProxy|
			serializedProxy := self 
				executeRemotely: #computeInspectorProxyAndTransformSelectionFor: 
				withArguments: { aListNode selfOop } ]