callbacks
computeInspectorProxyAndTransformSelectionFor: aNodeOop

	^ (self sendBlock cull: (Object _objectForOop: aNodeOop) targetObject) gtGsSerializedInspectorProxy