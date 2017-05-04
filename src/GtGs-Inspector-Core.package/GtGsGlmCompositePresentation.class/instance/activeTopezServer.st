private
activeTopezServer
	| topezClassName |
	topezClassName := SessionTemps current
		at: #'Gt4gemstone_Topez_Class_Name'.
	^ (GsSession currentSession symbolList 
		objectNamed: topezClassName) for: 1 