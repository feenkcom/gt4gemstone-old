finalization
executor
	"I return shallow copie of this object. I exist as am I used during finalization.
	Normally the Object class defines this method, however, I extend ProtoObject."
	^ self class new
		gemstoneClient: gemstoneClient;
		selfOopType: selfOopType