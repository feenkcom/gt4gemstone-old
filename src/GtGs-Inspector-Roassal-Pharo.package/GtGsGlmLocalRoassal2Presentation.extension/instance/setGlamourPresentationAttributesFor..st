*GtGs-Inspector-Roassal-Pharo
setGlamourPresentationAttributesFor: aPresentation 

	super setGlamourPresentationAttributesFor: aPresentation.
	
	aPresentation
		initializeView: [ self initialViewType asClass new ];
		painting: [ :view |
			localClassName asClass 
				perform: localSelector 
				withArguments: { 
					view . 
					self gemstoneClient 
						bareProxyForOopType: (self gemstoneClient session asOopType: self obtainDisplayValue)  
						ofType: GtGsBareProxy  } ]