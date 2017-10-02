printing
gtGsInspectorCPreviewOn: aComposite
	<gtInspectorPresentationOrder: 20>
	
	^ aComposite localMorph 
		title: 'Preview';
		display: [ self ];
		morphBuilder: #'ABPreviewMorph' selector: #newForContact:
		