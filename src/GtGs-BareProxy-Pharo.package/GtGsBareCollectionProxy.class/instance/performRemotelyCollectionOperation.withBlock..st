private
performRemotelyCollectionOperation: aSelector withBlock: aBlock

	^ self gemstoneClient 
		buildRemoteBareProxyFrom: 
			self gtGsBareAsBlockStringArgument, ' ', aSelector ,' ', aBlock sourceNode formattedCode
		ofType: self class