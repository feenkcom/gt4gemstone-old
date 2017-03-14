private
duplicateSessionDescription: aSessionDescription

	^ STON fromString: (String streamContents: [ :stream | 
     	STON writer
      		on: stream;
       	nextPut: aSessionDescription ]) 