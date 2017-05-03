scripting
gtGsForPharoWith: aBlock
	"I serialize and execute the given block on the Pharo side. I pass two parameters to the block:
	the first parameter is the Pharo Glamour presentation associated with this GemStone presentation;
	the second parameter is the list of remote parameters from the remote presentation. As this block
	will be serialized it should be self contained."
	
	self parameters at: 'initializationBlock' put: aBlock _sourceString