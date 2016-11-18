scripting opening
openOn: anObject
	
	^ (super openOn: anObject)
		title: self title;
		yourself