accessing
gsSelectionActions

	^ gsSelectionActions ifNil: [ gsSelectionActions := OrderedCollection new ]