building presentations
superclassesPresentationFor: aClass
	
	^ superclassesPresentation := GtGsGlmListPresentation new
		display: [ {aClass} , aClass allSuperClasses ];
		format: [ :currentClass | currentClass gtGsInspectorName ] 
		