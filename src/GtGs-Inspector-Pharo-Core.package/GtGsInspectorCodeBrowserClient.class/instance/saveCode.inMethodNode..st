actions
saveCode: aString inMethodNode: methodNode
	
	gemstoneBrowser gemstoneClient 
		send: #saveCode:inMethodNode:
		to: (gemstoneBrowser gemstoneClient session asOopType: gemstoneBrowser selfOop)
		withArgs: { 
			aString .
			gemstoneBrowser gemstoneClient session asOopType: methodNode selfOop }.