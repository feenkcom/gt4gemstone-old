building presentations
methodCodeIn: composite forContext: aContext

	(aContext methodCodeWidgetIn: composite forDebugger: self)
		initialize: [ :code | 
			code selectionInterval: (self session selectedCodeRangeForContext: self currentContext) ];
		with: [ :code | self installCodeActionsFor: code ]