actions
selectClass: aClassName
	| classContainerName |
	
	classContainerName := self containerNameForClassNamed: aClassName asString.

	self containersPresentation selection: classContainerName.
	self classesPresentation selection: aClassName asString

	