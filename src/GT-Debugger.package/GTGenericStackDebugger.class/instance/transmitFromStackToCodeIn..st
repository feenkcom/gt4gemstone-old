building
transmitFromStackToCodeIn: browser
	browser transmit
		from: #stack port: #selection;
		to: #code;
		andShow: [ :composite :aContext | 
			aContext ifNotNil: [ 
				self methodCodeIn: composite forContext: aContext ] ]