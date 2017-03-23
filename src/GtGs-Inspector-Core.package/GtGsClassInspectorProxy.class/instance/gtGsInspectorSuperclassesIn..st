as yet unclassified
gtGsInspectorSuperclassesIn: aComposite
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite fastList
				title: [ 'Superclasses' ];
				display: [ {self targetObject}, self targetObject allSuperClasses  ];
				format: [ :currentClass | currentClass gtGsInspectorName ] ]
		using: #gtGsInspectorSuperclassesIn:
		on: aComposite