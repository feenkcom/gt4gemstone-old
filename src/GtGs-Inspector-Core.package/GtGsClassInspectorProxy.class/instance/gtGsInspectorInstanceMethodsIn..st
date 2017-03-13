as yet unclassified
gtGsInspectorInstanceMethodsIn: aComposite
	<gtInspectorPresentationOrder: 15>
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite fastList
				display: [ (self targetObject selectors sortWithBlock: [ :a :b | a <= b ]) 
				collect: [ :aSelector | self targetObject compiledMethodAt: aSelector ] ];
				format: [ :aMethod | aMethod selector asString ] ]
		on: aComposite