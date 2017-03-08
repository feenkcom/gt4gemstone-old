building presentations
superclassesPresentationFor: aClass
	
	^ superclassesPresentation := GtGsGlmListPresentation new
		display: [ aClass allSuperclasses gtGsReversed 
			addLast: aClass;
			yourself ];
		format: [ :currentClass | currentClass gtGsInspectorName ] 
		