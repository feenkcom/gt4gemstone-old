updating
updateCacheIn: aDebuggingSession
		
	self frames do: #updateCacheBasic.
	self currentFrame updateCacheFullIn: aDebuggingSession 