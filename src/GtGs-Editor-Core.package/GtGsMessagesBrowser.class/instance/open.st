opening
open
	"Before opening the browser add it to the local storage to make sure it will not be garbaged collected."
	self addToLocalStorage. 
	
	^ self topezServer topezClientForwarder
   		perform: #'openRemoteTool:'
    	with: (self topezServer objectSerializer toString: self)