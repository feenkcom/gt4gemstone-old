callbacks
computeInspectorProxyAndTransformSelectionFor: aNodeOop

	^ GtGsInspectorProxy1 createAndSerializeProxyFor: (
			self sendBlock cull: (Object _objectForOop: aNodeOop) targetObject)