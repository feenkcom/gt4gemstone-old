updating
updateCacheBasic
	"I am called for every stack frame that needs to be displayed when 
	the debugger is created, regardles whether the stack frame is selected
	or not. Hence, I only compute the minimal information needed to
	display the stack frame. "
	
	| ws |
	ws := PrintStream printingOn: String new maxSize: 100.
	self updateCachedSelector.
  	self printDebugOn: ws.
  	frameLabel := ws contents.

	selfOop := self asOop.