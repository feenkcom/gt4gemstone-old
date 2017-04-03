transforming
gtGsAsCollectionFormatter
	"I return a formatter that can iterate and retrive elements from a remote
	collection. I assume the remote object is a collection. I am defined in the
	class of the bare proxy to simplify working with collections: if the caller
	knows that the remote object is a colletion the caller can directly obtain
	a formatter without converting the proxy to a collection proxy."
	
	^ self gemstoneClient buildRemoteCollectionFormatterFor: self gtGsBareAsBlockStringArgument