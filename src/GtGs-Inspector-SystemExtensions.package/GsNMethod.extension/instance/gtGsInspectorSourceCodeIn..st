*GtGs-Inspector-SystemExtensions
gtGsInspectorSourceCodeIn: aComposite
	<gtInspectorPresentationOrder: 5>
	
	aComposite text
		title: [ 'Source' ];
		display: [ self sourceString ];
		format: [ :aString | aString ]