as yet unclassified
gtGsInspectorInstanceMethodsIn: aComposite
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite fastList
				title: [ 'Instance methods' ];
				display: [ (self targetObject selectors sortWithBlock: [ :a :b | a <= b ]) 
				collect: [ :aSelector | self targetObject compiledMethodAt: aSelector ] ];
				format: [ :aMethod | aMethod selector asString ] ]
		on: aComposite