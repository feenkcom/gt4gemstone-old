accessing
stackForSignal: aSignal

	^ sessionStacks
		at: aSignal sessionHash 
		ifAbsentPut: [ Stack new
			push: (GtGsLogSessionEventsContainer new
				sessionName: aSignal sessionName;
				sessionHash: aSignal sessionHash;
				gemstoneClient: aSignal gemstoneClient);
			yourself ].