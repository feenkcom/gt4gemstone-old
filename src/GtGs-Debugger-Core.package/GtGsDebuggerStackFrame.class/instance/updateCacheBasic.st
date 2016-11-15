updating
updateCacheBasic
	| ws |
	ws := PrintStream printingOn: String new maxSize: 100.
  	self printDebugOn: ws.
  	frameLabel := ws contents.

	selfOop := self asOop.