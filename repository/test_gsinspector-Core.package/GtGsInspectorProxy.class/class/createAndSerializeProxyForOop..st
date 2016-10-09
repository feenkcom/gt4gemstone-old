instance-creation
createAndSerializeProxyForOop: anOop
	
	^ (self forOop: anOop) asTopazSerializedString.
		