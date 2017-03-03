callbacks
computePresentationsUsing: aSelector for: aNode
	| presentation |
	
	presentation := self perform: aSelector with: aNode targetObject.
	presentation 
		updateForOwner: self;
		updateCache.
	^ self topezServer objectSerializer toString: presentation