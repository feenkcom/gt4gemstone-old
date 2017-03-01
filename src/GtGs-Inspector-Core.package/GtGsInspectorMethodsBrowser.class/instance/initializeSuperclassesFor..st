initialization
initializeSuperclassesFor: aClass
	
	superclassesPresentation := GtGsGlmListPresentation new
		title: [ 'Source' ];
		display: [ aClass  withAllSuperclasses reversed ];
		format: [ :currentClass | currentClass gtGsInspectorName ].
	superclassesPresentation updateForOwner: self