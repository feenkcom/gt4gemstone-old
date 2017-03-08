building presentations
superclassesPresentationFor: aClass
	
	^ superclassesPresentation := GtGsGlmListPresentation new
		display: [ aClass allSuperClasses gtGsReversed 
			addLast: aClass;
			yourself ];
		format: [ :currentClass | currentClass gtGsInspectorName ] 
		