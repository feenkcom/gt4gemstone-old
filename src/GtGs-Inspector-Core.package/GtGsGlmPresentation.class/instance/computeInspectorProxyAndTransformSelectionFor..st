callbacks
computeInspectorProxyAndTransformSelectionFor: aNodeOop

	^ GtGsInspectorProxy createAndSerializeProxyFor: (
			self sendBlock cull: (Object _objectForOop: aNodeOop) targetObject)