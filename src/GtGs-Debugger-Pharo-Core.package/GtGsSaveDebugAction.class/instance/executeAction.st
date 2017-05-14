as yet unclassified
executeAction
	self debugger codePresentation hasUnacceptedEdits 
		ifTrue: [ self session saveGemstoneCode: self debugger codePresentation text asString ].
	"self codePresentation flash"