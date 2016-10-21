as yet unclassified
on: aSessionDescriptionList
	|model|
	model := GLMBrickListModel new
		on: aSessionDescriptionList.
	model
		morphAtLogic: [ :index | self newRowFor: (model origin at: index)  ].
	self model: model