callbacks
computeNextInspectorProxyFor: aNodeOop andSelect: aPresentationTitle

	^ (self sendBlock cull: (Object _objectForOop: aNodeOop) targetObject) 
		gtGsSerializedInspectorProxyAndSelect: (self topezServer objectSerializer fromString: aPresentationTitle)