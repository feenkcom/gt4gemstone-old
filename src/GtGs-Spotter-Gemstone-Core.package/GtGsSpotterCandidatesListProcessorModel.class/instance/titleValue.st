accessing
titleValue
	^ self titleBlock ifNotNil: [ :aBlock | aBlock value ]