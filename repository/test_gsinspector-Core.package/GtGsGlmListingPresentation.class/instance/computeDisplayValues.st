callbacks
computeDisplayValues
	| currentObjects valuesToReturn |
	currentObjects := self displayBlock value.
	valuesToReturn := self applyFormattingTo: currentObjects.
	self cacheAt: #'displayValues' put: valuesToReturn.
	^ self serializer toString: valuesToReturn
	