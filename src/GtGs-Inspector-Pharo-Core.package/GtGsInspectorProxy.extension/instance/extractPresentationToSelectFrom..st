*GtGs-Inspector-Pharo-Core
extractPresentationToSelectFrom: currentPane
	"Detect the title of the presentation that was previously selected in the following pane."
	| paneIdex  allPanes |
	
	paneIdex := 1.
	allPanes := currentPane browser panes.
	allPanes size > 0 ifTrue: [ 
		"If there is already a next pane we get the last selected presentation from that pane.
		If the current pane is the last pane get the last selected presentation from this pane."
		paneIdex := allPanes indexOf: currentPane.
		paneIdex < allPanes size
			ifTrue: [ paneIdex := paneIdex + 1 ] ].

	^ (allPanes at: paneIdex) lastActivePresentation
		ifNotNil: [ :curentPresentation | curentPresentation titleValue ]