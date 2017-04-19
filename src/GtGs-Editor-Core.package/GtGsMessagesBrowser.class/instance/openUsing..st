as yet unclassified
openUsing: aTopezServer

	^ aTopezServer topezClientForwarder
   		perform: #'openRemoteTool:'
    	with: (aTopezServer objectSerializer toString: self)