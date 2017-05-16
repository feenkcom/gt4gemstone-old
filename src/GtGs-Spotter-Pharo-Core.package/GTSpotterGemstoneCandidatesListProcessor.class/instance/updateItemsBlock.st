searching
updateItemsBlock
	self items: ([ :filter :context || inspectorProxy list |
		inspectorProxy := self proxyToSearchResultForContext: context.	
							
		list := (inspectorProxy  
			remoteInspectorPresentationFor: #targetObject
			using: #gtGsSpotterStringItemsIn:).
			
		context processor totalNumberOfElements: list obtainTotalNumberOfElements.
		list cachedDisplayValue do: [ :each | filter value: each formattedValue ] ]) gtIterator