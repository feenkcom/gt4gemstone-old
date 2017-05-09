actions - api
closeAllRemoteWindows
	| gsToolModels |
	gsToolModels := { #GtGsInspector . #GtGsPlayground . #GtGsGenericStackDebugger . #GtGsSymbolDictionariesBrowser . #GtGsCategoriesBrowser . #GtGsRemoteMessagesBrowser }.
	(SystemWindow allSubInstances select: [:w | 
		 gsToolModels anySatisfy: [ :aGsToolModel | w model class includesBehavior: aGsToolModel asClass ] ])
				do: [ :window | 
					window model gemstoneClient == self ifTrue: [ window delete ] ].