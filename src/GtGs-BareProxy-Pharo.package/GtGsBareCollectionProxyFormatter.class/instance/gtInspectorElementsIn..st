printing
gtInspectorElementsIn: aComposite
	<gtInspectorPresentationOrder: 15>
	
	^ aComposite fastList 
		title: 'Elements' ;
		display: [ self elements ]