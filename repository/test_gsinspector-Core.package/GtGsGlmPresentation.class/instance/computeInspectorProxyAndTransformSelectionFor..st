callbacks
computeInspectorProxyAndTransformSelectionFor: anOop

	^ GtGsInspectorProxy1 createAndSerializeProxyForOop: (self sendBlock cull: anOop)