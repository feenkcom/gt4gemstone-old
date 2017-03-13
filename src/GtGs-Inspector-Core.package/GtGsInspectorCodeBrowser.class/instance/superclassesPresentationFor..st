building presentations
superclassesPresentationFor: aClass
	
	^ superclassesPresentation := GtGsGlmListPresentation new
		display: [ aClass allSuperClasses  
			addFirst: aClass;
			yourself ];
		format: [ :currentClass | currentClass gtGsInspectorName ] 
		