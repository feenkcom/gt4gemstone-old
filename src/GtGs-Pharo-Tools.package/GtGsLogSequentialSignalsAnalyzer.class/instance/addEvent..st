actions
addEvent: anEvent
	|currentStack|
	currentStack := self stackForSignal: anEvent.
	currentStack top addEvent: anEvent