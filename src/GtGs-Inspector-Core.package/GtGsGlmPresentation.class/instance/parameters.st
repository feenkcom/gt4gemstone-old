accessing
parameters
	"I return a Dictionary meant to pass relevant values to the Pharo side. Because of this,
	clients should only store objects that can be serialized using STON."
	
	^ parameters ifNil: [ parameters := Dictionary new ]