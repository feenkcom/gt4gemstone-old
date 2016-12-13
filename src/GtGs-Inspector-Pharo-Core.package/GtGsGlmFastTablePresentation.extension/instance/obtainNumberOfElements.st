*GtGs-Inspector-Pharo-Core
obtainNumberOfElements
	"Not the best implementation."
	^ numberOfElements ifNil: [ numberOfElements := self executeRemotely: #computeNumberOfElements ]