browsing
browseFull: aClassName
	
	self topezServer topezClientForwarder
   		perform: #'browseClassFrom:'
    	with: aClassName