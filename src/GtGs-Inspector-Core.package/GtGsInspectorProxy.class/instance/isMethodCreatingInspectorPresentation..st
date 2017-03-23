testing
isMethodCreatingInspectorPresentation: aGsMethod

	^ (aGsMethod sourceString includesString: '<gtInspectorPresentationOrder:') and: [ 
			(aGsMethod selector beginsWith: 'gtGsInspector') 
				or: [ aGsMethod selector beginsWith: 'gtInspector' ] ]