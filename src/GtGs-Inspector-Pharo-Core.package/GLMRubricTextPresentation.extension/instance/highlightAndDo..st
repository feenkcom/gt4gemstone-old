*GtGs-Inspector-Pharo-Core
highlightAndDo: aBlock

	self announce: (GLMTextEditorRequest new 
		action: [ :anEditor |
			anEditor highlightAndEmptyCheck: [  ].
			anEditor getHighlightInterval 
				ifNotEmpty: [ aBlock cull: anEditor highlightedTextAsStream contents ] ])