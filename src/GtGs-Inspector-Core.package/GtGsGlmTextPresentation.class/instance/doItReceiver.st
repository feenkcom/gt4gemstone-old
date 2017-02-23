accessing
doItReceiver

	^ self doItReceiverBlock ifNotNil: [ :aBlock | aBlock value]