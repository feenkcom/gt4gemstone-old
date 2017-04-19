as yet unclassified
openUsing: aTopezServer
	self 
		updateForOwner: aTopezServer;
		updateCache.
	^ aTopezServer topezClientForwarder
   		perform: #'openRemoteTool:'
    	with: (aTopezServer objectSerializer toString: self)