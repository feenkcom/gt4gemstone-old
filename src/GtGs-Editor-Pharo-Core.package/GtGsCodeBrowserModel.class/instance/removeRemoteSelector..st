actions - remote
removeRemoteSelector: aSelector
	| selectorToSelect |
	
	selectorToSelect := [ :currentClassName :currentSelectorName :isMeta |
		|targetClass sortedSelectors selectorIndex nextSelector| 
		
		targetClass := (GsSession currentSession symbolList 
			objectNamed: currentClassName asSymbol).
		isMeta ifTrue: [ targetClass := targetClass class ].
		
		"This is an ugly solution. Ideally the fast table presentation on the Pharo side should determine
		which selector to select next."
		sortedSelectors := (targetClass selectors sortWithBlock: [ :a :b | a < b ]) select: [ :s |
			((targetClass compiledMethodAt: s) inClass categoryOfSelector: s )= 
				((targetClass compiledMethodAt: currentSelectorName) inClass categoryOfSelector: currentSelectorName) ].
		selectorIndex := sortedSelectors indexOf: currentSelectorName.
		(selectorIndex = sortedSelectors size) 
			ifTrue: [ selectorIndex := selectorIndex - 1 ]
			ifFalse: [ selectorIndex := selectorIndex + 1 ].
		selectorIndex = 0 
			ifTrue: [ nextSelector := nil ] ifFalse: [ nextSelector := sortedSelectors at: selectorIndex  ].
			
		targetClass removeSelector: currentSelectorName.
		nextSelector ] 
			gtGsBarePerformRemotelyOn: self gemstoneClient 
			withArguments: { className . aSelector . self isClassSideActive }.
	
	methodSelector := selectorToSelect.
	codeBrowser updateMethodsListAndSelect: selectorToSelect