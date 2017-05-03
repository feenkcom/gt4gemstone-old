*GtGs-Inspector-Pharo-Core
selectionAsCallbackArgumentFor: aGlamourPresentation
	"In a presentation displaying text the selection consists in 
	the seleted text. If there is no explicit selection highlight
	and use the current line."
	
	^ aGlamourPresentation gtGsSelectedOrHighligtedText asString