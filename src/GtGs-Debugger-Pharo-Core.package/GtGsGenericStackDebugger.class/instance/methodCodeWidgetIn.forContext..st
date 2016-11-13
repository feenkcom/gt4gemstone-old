building presentations
methodCodeWidgetIn: composite forContext: aContext

	^ composite text
		title: 'Source';
		format: [ aContext cachedSourceCode ifNil: [ 'missing source code' ] ]";
		smalltalkClass: [  aContext methodClass ];
		doItReceiver: [ aContext receiver ];
		doItContext: [  aContext ]"