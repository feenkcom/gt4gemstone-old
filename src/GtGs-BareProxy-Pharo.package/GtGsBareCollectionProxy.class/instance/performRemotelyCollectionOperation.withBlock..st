private
performRemotelyCollectionOperation: aSelector withBlock: aBlock

	^ self gemstoneClient 
		buildRemoteBareProxyFrom: 
			self gtGsAsBlockStringArgument, ' ', aSelector ,' ', aBlock gtGsAsBlockStringArgument
		ofType: self class