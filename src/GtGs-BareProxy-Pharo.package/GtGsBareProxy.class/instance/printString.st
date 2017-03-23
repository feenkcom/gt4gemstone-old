accessing - local
printString
	"This is a method used by tools for printing the object that performs a remote call only
	if the proxy is active. By declaring the method in the class of the proxy there is no
	need for tools to handle the proxy in a different way."
	
	^ self isProxyObjectActive 
		ifTrue: [ self remotePrintString ]
		ifFalse: [ 'inactive' ]