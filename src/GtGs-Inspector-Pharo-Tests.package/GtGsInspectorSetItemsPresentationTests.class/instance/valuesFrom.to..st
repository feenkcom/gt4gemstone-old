accessing
valuesFrom: startIndex to: stopIndex

	^ ((startIndex to: stopIndex) collect: [ :index | 
		{ 
			index asString
		} ])