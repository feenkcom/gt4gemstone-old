browsing
browseFullMethod: aMethod
	
	self topezServer topezClientForwarder
   		perform: #'browseMethod:fromClass:classSide:'
    	with: {aMethod selector . aMethod inClass thisClass . aMethod inClass isMeta}