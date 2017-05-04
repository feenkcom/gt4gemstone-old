tests- gc
testGargabeCollectionRemoteRegistryInitialization
	| result |
		
	result := self client onServerDo: [ 
		SessionTemps current
			includesKey: #'GtGs_GlamourStorage' ].
		
	self assert: result not description: 'Initially there is no registry for keeping track of proxies.'