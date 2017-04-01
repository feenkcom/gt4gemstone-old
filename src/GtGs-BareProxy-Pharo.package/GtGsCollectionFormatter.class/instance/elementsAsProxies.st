actions
elementsAsProxies
	"I am an utility method. I return a collection containing a bare proxy for each 
	element of the remote collection. I do not check for oop types, so I should only
	be used when the remote collection contains remote objects and not primitive types.
	In the future I should be extended to take into account primitive types.
	
	Also, since I remotely return a list of oops, GCI will not holder a reference to 
	the remote objects in the collection. Hence, if they are removed the proxy could 
	point to an invalid object."
	
	^ (self 
		remoteFormat: [ :anObject | anObject asOop asString ];
		localFormat: [ :anOopString | gemstoneClient 
			bareProxyForOopType: (gemstoneClient session asOopType: anOopString asInteger)
			ofType: GtGsBareProxy ]) elements