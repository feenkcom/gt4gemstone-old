tests - arguments
testArrayNestedAsStringArgument
	| bareProxy |
	
	bareProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self 
		assert: { { 1 . 2 } . { bareProxy . { '42' } } } gtGsBareAsBlockStringArgument 
		equals: ' {  { 1 . 2 .  }  .  { (Object _objectForOop: ', bareProxy selfOop asString ,') .  { ''42'' .  }  .  }  .  } '.
