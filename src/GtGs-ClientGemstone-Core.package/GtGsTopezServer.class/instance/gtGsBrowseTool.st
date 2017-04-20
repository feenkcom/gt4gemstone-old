tools
gtGsBrowseTool

	^ (GsSession currentSession symbolList 
			objectNamed: #'GtGsBrowseTool' asSymbol) instanceFor: self