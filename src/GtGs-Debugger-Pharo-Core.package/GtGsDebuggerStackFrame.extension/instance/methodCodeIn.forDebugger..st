*GtGs-Debugger-Pharo-Core
methodCodeIn: aComposite forDebugger: aDebugger

	^ aComposite text
		title: 'Source';
		format: [ self cachedSourceCode ifNil: [ 'missing source code' ] ];
		initialize: [ :code | 
			code selectionInterval: (aDebugger session selectedCodeRangeForContext: aDebugger currentContext) ];
		with: [ :code | "aDebugger
			installActionsForRootPragmas: #(gsStackDebuggingAction) 
			in: code" ]
		
		";
		smalltalkClass: [  aContext methodClass ];
		doItReceiver: [ aContext receiver ];
		doItContext: [  aContext ]"