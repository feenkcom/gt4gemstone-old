browsing
browseFullMethod: aMethod
	
	self topezServer topezClientForwarder
   		perform: #'browseMethod:fromClass:classSide:'
    	withArguments: {aMethod selector . aMethod inClass thisClass . aMethod inClass isMeta}