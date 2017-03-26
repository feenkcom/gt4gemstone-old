private
performRemotelyCollectionOperation: aSelector withBlock: aBlock

	^ self gemstoneClient 
		buildRemoteBareProxyFrom: 
			self gtGsBareAsBlockStringArgument, ' ', aSelector ,' ', aBlock gtGsBareAsBlockStringArgument
		ofType: self class