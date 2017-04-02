printing
gtGsInspectorAPreviewOn: aComposite
	<gtInspectorPresentationOrder: 9>
	
	^ aComposite localMorph 
		title: 'Preview';
		morphBuilder: #'ABPreviewMorph' selector: #newForContact:
		