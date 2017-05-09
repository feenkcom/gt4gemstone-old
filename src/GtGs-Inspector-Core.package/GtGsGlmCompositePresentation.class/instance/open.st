opening
open
	"Not working yet"
	self presentations do: [ :aPresentation | 
		aPresentation 
			updateForOwner: self activeTopezServer;
			updateCache. ].
	^ self topezServer topezClientForwarder
   		perform: #'openRemotePresentations:'
    	with: (self topezServer objectSerializer toString: self)