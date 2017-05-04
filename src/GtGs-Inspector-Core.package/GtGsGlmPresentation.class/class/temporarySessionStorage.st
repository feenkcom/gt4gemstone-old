accessing
temporarySessionStorage
	"In the GemStone version of Glamour presentations that are serialized and sent
	to the client need to be also kept on the server to avoid garbage collection.
	This method returns a dictionary that can be used to store presentations inside
	the current session."
	
	^ SessionTemps current
		at: #'GtGs_GlamourStorage'
		ifAbsent: [ SessionTemps current 
			at: #'GtGs_GlamourStorage' 
			put: Dictionary new].