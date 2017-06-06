*GtGs-Debugger-Pharo-Core
methodCodeIn: aComposite forDebugger: aDebugger

	self methodPresentation glamourPresentation ifNil: [ | anotherComposite |
		self methodPresentation gemstoneClient: aDebugger session gemstoneClient.
		
		anotherComposite := GLMCompositePresentation new.
		self methodPresentation gtGsAsGlamourPresentationIn: anotherComposite.
		
		"Add a custom do it and go action"
		anotherComposite last selectionActions addFirst: (GLMGenericAction new
			title: 'Do it and go (remote)';
			action: [ :aPresentation |
				aPresentation highlightAndDo: [ :aText |
					aDebugger inspect: (self methodPresentation buildRemoteInspectorProxyFrom: aText) ] ];  
			shortcut: $g; 
			withSeparatorBefore;
			yourself).
		"Set the selection."
		anotherComposite last initialize: [ :code | 
			code selectionInterval: (aDebugger session 
				ifNil: [ 1 to: 0]
				ifNotNil: [aDebugger session  selectedCodeRangeForContext: aDebugger currentContext] ) ] ] .
		
	aComposite custom: (self methodPresentation glamourPresentation
		with: [ :code | aDebugger installCodeActionsFor: code ] )
	
	