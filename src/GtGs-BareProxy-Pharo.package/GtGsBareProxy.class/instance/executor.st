finalization
executor
	"I return shallow a copy of this object. I exist as am I used during finalization.
	Normally the Object class defines this method, however, I extend ProtoObject.
	As I am only should be used in case of gargabe collection I do not use the API
	provided by the gemstone client for creating bare proxies to not increase the
	number of proxies pointing to the remote object."
	^ self class new
		gemstoneClient: gemstoneClient;
		selfOopType: selfOopType