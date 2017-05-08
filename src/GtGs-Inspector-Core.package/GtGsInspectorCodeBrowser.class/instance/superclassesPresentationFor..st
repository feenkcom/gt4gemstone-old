building presentations
superclassesPresentationFor: aClass
	
	^ superclassesPresentation := GtGsGlmListPresentation new
		display: [ {aClass} , aClass allSuperClasses ];
		format: [ :currentClass | currentClass gtGsInspectorName ];
		gsSelectionAct: [ :aGsPresentation :selectedClass | 
				aGsPresentation topezServer gtGsBrowseTool browseFull: selectedClass name.
				true ]
			on: nil 
			entitled: 'Browse class full'
		