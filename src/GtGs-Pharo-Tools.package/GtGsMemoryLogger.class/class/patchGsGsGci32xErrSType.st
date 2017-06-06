as yet unclassified
patchGsGsGci32xErrSType

	GsGci32xErrSType 
		compile: 'asLocalObjectFor: aGciSession
	"at the cost of some round trips, this can be improved"

	| exceptionClass exception actionResult |
	exceptionClass := self errorToExceptionMap
		at: self number
		ifAbsent: [ self defaultErrorExceptionClass ].
	exception := exceptionClass gciSession: aGciSession gci32xErrSType: self.
	
	exception class gtGsBeaconSignalClass  
		emitForClient: aGciSession clientObj
		errSType: self
		andNotification: exception.
	
	actionResult := exception signal.
	actionResult isArray
		ifTrue: [ | action actionValue |
			action := actionResult at: 1.
			actionValue := actionResult at: 2.
			action == #abort
				ifTrue: [ aGciSession send: #terminate to: self context.
					^ actionValue ].
			action == #resume
				ifTrue: [ | actionValueOopType |
					actionValueOopType := actionValue localObjectToGciOopType: aGciSession.
					^ aGciSession continueContext: self context with: actionValueOopType ].
			action == #debug
				ifTrue: [ ^ aGciSession clientObj debuggerRequested: actionValue ].
			action == #logStack
				ifTrue: [ aGciSession clientObj logStackRequested: actionValue.
					Error signal: ''GemStone Server error: '' , actionValue ].
			self
				error:
					''Unknown action '' , action printString , '' for exception '' , exceptionClass printString ]
		ifFalse: [ actionResult == #resume
				ifTrue: [ ^ aGciSession continueContext: self context ].
			^ actionResult ]'
		classified: 'converting'