printing
gtGsInspectorSourceCodeIn: aComposite
	<gtInspectorPresentationOrder: 15>
	
	self 
		gemstoneOrRemoteWith: [ 
			aComposite text
				title: [ 'Source' ];
				display: [ self targetObject sourceString ];
				format: [ :aString | aString ] ]
		on: aComposite
		