accessing
literalVars

	^ self literalVarsBlock ifNotNil: [ :aBlock | aBlock value]