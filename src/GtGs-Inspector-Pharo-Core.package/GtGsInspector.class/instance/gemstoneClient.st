building
gemstoneClient
	^ self entity ifNotNil: [ :anInspectorProxy |
		anInspectorProxy gemstoneClient  ]