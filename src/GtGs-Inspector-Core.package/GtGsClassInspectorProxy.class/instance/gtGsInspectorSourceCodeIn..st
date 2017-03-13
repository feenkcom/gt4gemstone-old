as yet unclassified
gtGsInspectorSourceCodeIn: aComposite
	<gtInspectorPresentationOrder: 15>
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite fastList new
				display: [ self targetObject allSuperClasses gtGsReversed 
					addLast: self targetObject;
					yourself ];
				format: [ :currentClass | currentClass gtGsInspectorName ] ]
		on: aComposite