initialization
initializeSuperclassesFor: aClass
	
	superclassesPresentation := GtGsGlmListPresentation new
		display: [ aClass  withAllSuperclasses reversed ];
		format: [ :currentClass | currentClass gtGsInspectorName ].
	superclassesPresentation 
		updateForOwner: self;
		updateCache