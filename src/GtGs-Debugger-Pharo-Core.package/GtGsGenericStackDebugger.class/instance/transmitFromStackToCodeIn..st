overrides
transmitFromStackToCodeIn: browser
	browser transmit
		from: #stack port: #selection;
		to: #code;
		andShow: [ :composite :aContext | 
			aContext ifNotNil: [
				aContext methodCodeIn: composite forDebugger: self ]]