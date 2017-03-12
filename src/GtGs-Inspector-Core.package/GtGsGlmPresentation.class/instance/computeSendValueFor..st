callbacks
computeSendValueFor: aNodeOop
	^ self sendBlock cull: (Object _objectForOop: aNodeOop) targetObject 