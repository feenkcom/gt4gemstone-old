opening
openOn: anObject
	
	^ (super openOn: anObject)
		extent: self initialExtent;
		yourself