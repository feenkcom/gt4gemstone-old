as yet unclassified
closeAllRemoteWindowsFor: aGemstoneClient

	(SystemWindow allSubInstances select: [:w | 
		 (w model class includesBehavior: GtGsInspector) or: [
			w model class includesBehavior: GtGsPlayground ] ])
				do: [ :window | 
					window model gemstoneClient == aGemstoneClient ifTrue: [ window delete ] ].