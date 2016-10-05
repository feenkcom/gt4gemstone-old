updating
updatePresentations2Old
	
	presentations := OrderedCollection new.
	presentations add: (targetObject gtGsInspectorRawList1Presentation1With: self topezServer objectSerializer).
	presentations add: (targetObject gtGsInspectorRawList1Presentation2With: self topezServer objectSerializer).
	
	presentations do: [ :aPresentation | aPresentation topezServer: self topezServer ]