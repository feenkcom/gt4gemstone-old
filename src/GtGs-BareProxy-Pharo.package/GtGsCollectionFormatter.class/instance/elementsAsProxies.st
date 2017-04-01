actions
elementsAsProxies
	"I am an utility method. I return a collection containing a bare proxy for each 
	element of the remote collection. I do not check for oop types, so I should only
	be used when the remote collection contains remote objects and not primitive types.
	In the future I should be extended to take into account primitive types."
	^ (self 
		remoteFormat: [ :anObject | anObject asOop ];
		localFormat: [ :anOop | gemstoneClient 
			bareProxyForOopType: (gemstoneClient session asOopType: anOop)
			ofType: GtGsBareProxy ]) elements