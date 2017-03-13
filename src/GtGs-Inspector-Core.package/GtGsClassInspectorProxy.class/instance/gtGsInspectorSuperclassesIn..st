as yet unclassified
gtGsInspectorSuperclassesIn: aComposite
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite fastList
				title: [ 'Superclasses' ];
				display: [ self targetObject allSuperClasses 
					addFirst: self targetObject;
					yourself ];
				format: [ :currentClass | currentClass gtGsInspectorName ] ]
		on: aComposite