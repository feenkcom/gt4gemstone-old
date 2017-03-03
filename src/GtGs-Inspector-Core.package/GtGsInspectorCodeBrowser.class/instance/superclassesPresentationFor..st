building presentations
superclassesPresentationFor: aClass
	
	^ superclassesPresentation := GtGsGlmListPresentation new
		display: [ aClass  withAllSuperclasses reversed ];
		format: [ :currentClass | currentClass gtGsInspectorName ] 
		