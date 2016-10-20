accessing
gsSelectionActions

	^ gsSelectionActions ifNil: [ gsActions := OrderedCollection new ]