as yet unclassified
gtGsInspectorSuperclassesIn: aComposite
	<gtInspectorPresentationOrder: 15>
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite fastList
				title: [ 'Superclasses' ];
				display: [ self targetObject allSuperClasses gtGsReversed 
					addLast: self targetObject;
					yourself ];
				format: [ :currentClass | currentClass gtGsInspectorName ] ]
		on: aComposite