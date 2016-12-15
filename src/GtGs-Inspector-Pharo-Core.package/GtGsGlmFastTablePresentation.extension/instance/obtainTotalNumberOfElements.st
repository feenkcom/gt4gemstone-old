*GtGs-Inspector-Pharo-Core
obtainTotalNumberOfElements
	"Not the best implementation."
	^ numberOfElements ifNil: [ numberOfElements := self executeRemotely: #computeTotalNumberOfElements ]