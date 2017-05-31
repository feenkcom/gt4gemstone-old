instance creation
instantiateUsingTopezServer: aTopezServer 
	| spotterModel spotterModelForwarder resultDictionary |
	
	spotterModelForwarder := ClientForwarder new.
	spotterModel := self new
		topezServer: aTopezServer;
		spotterForwarder: spotterModelForwarder.
	
	"aTopezServer addToLocalStorage: spotterModel."
	(GsSession currentSession symbolList 
		objectNamed: #'GtGsGlmPresentation' ) temporarySessionStorage
			 at: spotterModel asOop put: spotterModel.
	
	resultDictionary := Dictionary new 
		at: 'selfOop' put: spotterModel asOop;
		at: 'forwarderOop' put: (Reflection oopOf: spotterModelForwarder);
		yourself.
	^ aTopezServer objectSerializer toString: resultDictionary