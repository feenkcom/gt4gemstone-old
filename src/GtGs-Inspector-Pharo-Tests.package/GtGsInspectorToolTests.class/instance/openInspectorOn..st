utils
openInspectorOn: anInspectorProxy

	window := GtGsInspector openOn: anInspectorProxy.
	World doOneCycle.
	^ window