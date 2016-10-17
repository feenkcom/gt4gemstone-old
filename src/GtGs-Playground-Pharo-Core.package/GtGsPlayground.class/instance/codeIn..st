building
codeIn: aComposite
	| textPresentation |
	self flag: 'We should remove this hack by refactoring the GTPlayground in Pharo 6'.
	
	textPresentation := super codeIn: aComposite.
	(textPresentation actions
		detect: [ :anAction | anAction title = 'Do it all and go' ] 
		ifNone: [  ])
			action: [ :aPresentation |			
				aPresentation selectionInterval: (1 to: aPresentation text size).
				aPresentation highlightAndDo: [ :selectedText |
					aPresentation selection: (self gemstoneClient buildRemoteInspectorProxyFrom: selectedText)  ] ].
	^ textPresentation