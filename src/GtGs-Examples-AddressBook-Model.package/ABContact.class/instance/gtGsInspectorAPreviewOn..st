printing
gtGsInspectorAPreviewOn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	^ aComposite localMorph 
		title: 'Preview';
		display: [ self ];
		morphBuilder: #'ABPreviewMorph' selector: #newForContact:
		