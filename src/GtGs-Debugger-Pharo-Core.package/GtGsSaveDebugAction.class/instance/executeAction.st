as yet unclassified
executeAction

	self codePresentation hasUnacceptedEdits 
		ifTrue: [ self session saveGemstoneCode: self codePresentation text asString ].
	"self codePresentation flash"