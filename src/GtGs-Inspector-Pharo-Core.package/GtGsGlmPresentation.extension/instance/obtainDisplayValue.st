*GtGs-Inspector-Pharo-Core
obtainDisplayValue

	^ self cacheAt: #'displayValue' ifAbsentPut: [ self executeRemotely: #computeDisplayValue ]