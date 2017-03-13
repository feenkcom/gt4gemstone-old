*GtGs-Inspector-Pharo-Core
gtGsInspectorSuperclassesIn: aComposite

	^ aComposite fastList
		title: [ 'Superclasses' ];
		display: [ self withAllSuperclasses ]