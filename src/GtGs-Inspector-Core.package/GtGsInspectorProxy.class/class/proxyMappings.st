accessing
proxyMappings
	| mappings |
	mappings := Dictionary new.
	mappings
		at: #'GsNMethod' put: #'GtGsMethodInspectorProxy';
		at: #'Class'     put: #'GtGsClassInspectorProxy'.
	^ mappings