*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	super setGlamourPresentationAttributesFor: aPresentation.
	
	aPresentation
		morph: [ 
			localClassName asClass 
				perform: localSelector 
				withArguments: {
					self gemstoneClient 
						bareProxyForOopType: (self gemstoneClient session asOopType: self obtainDisplayValue)  
						ofType: GtGsBareProxy  } ]