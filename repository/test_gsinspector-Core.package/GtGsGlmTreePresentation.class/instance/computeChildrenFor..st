callbacks
computeChildrenFor: anOop
	| childrenValues formattedChildrenValues |
	childrenValues := self childrenBlock value: anOop.
	formattedChildrenValues := self applyFormattingTo: childrenValues.
	^ childrenValues