instance creation
instantiateUsingTopezServer: aTopezServer 
	| spotterModel |
	
	spotterModel := self new.
	^ spotterModel gtGsSerializedInspectorProxy