*GtGs-Debugger-Pharo-Core
methodCodeWidgetIn: aComposite forDebugger: aDebugger

	^ aComposite text
		title: 'Source';
		format: [ self cachedSourceCode ifNil: [ 'missing source code' ] ]";
		smalltalkClass: [  aContext methodClass ];
		doItReceiver: [ aContext receiver ];
		doItContext: [  aContext ]"