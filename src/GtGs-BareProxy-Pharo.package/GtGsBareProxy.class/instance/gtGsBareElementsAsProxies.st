transforming
gtGsBareElementsAsProxies
	"I assume the object is a collection to a remote proxy and return a collection
	of proxies for those elements. I exist to that local collecions objects and 
	remote collection objects can be handled polymorphically by clients.
	See #elementsAsProxies for more details and limitations of myself."
	^ self gtGsBareAsCollectionFormatter elementsAsProxies