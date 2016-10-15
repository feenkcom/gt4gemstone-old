*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	self flag: 'Why are we using cacheAt:ifAbsentPut: here? 
	They are anyway stored in computeTitle and computeDisplayValue'.
	super setGlamourPresentationAttributesFor: aPresentation.
	aPresentation
		shouldValidate: false;
		allowsRecursiveSearch: false;
		title: [
			self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #'computeTitle' ] ];
		display: [ 
			self cacheAt: #'displayValue' ifAbsentPut: [ self executeRemotely: #computeDisplayValue ] ];
		icon: [ :aListNode | 
			aListNode iconId   
				ifNotNil: [ Smalltalk ui icons iconNamed: aListNode iconId ] ];
		send: [ :aListNode ||serializedProxy|
			serializedProxy := self 
				executeRemotely: #computeInspectorProxyAndTransformSelectionFor: 
				withArguments: { aListNode selfOop }.
			serializedProxy
				gemstoneClient: self gemstoneClient;
				yourself ]