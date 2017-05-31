accessing
allCachedCandidates
	
	^ cachedCandidates ifNil: [ cachedCandidates := self allCandidatesBlock value ]