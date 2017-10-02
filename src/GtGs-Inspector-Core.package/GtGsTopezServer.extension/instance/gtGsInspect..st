*GtGs-Inspector-Core
gtGsInspect: anObject
	self topezServer topezClientForwarder
   		perform: #'openRemoteInspectorOn:'
    	with: (anObject gtGsSerializedInspectorProxyAndSelect: nil)