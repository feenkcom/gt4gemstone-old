callbacks
dbContinue: aProcessOop

	^ self gemstoneClient 
		handleDebugExceptionsDuring: [ 
			self gemstoneClient session continueContext: (GsGciOopType fromInteger: aProcessOop) ]