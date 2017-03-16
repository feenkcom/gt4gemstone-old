actions - api
closeAllRemoteWindows

	(SystemWindow allSubInstances select: [:w | 
		 (w model class includesBehavior: GtGsInspector) or: [
			w model class includesBehavior: GtGsPlayground ] ])
				do: [ :window | 
					window model gemstoneClient == self ifTrue: [ window delete ] ].