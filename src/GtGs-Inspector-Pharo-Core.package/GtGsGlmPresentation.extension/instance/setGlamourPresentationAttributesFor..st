*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	aPresentation
		title: [
			self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #'computeTitle' ] ];
		display: [ 
			self cacheAt: #'displayValue' ifAbsentPut: [ self executeRemotely: #computeDisplayValue ] ];
		send: [ :aListNode ||serializedProxy|
			aListNode class = GtGsInspectorProxy 
			ifTrue: [ aListNode ]
			ifFalse: [ 
				self flag: 'A better solution is needed here'.
				serializedProxy := self 
					executeRemotely: #computeInspectorProxyAndTransformSelectionFor: 
					withArguments: { aListNode selfOop }.
				serializedProxy
					gemstoneClient: self gemstoneClient;
					yourself ] ].
		
	self gsActions withIndexDo: [ :aGsAction :anIndex |
		aPresentation actions add:
			(aGsAction 
				asGlamourActionFromGsPresentation: self
				withId: anIndex) ]
