*GtGs-Debugger-Pharo-Core
methodCodeIn: aComposite forDebugger: aDebugger

	self methodPresentation gemstoneClient: aDebugger session gemstoneClient.
	self methodPresentation asGlamourPresentationOn: aComposite

	"^ aComposite text
		title: 'Source';
		format: [ self cachedSourceCode ifNil: [ 'missing source code' ] ];
		initialize: [ :code | 
			code selectionInterval: (aDebugger session selectedCodeRangeForContext: aDebugger currentContext) ];
		with: [ :code |  ]"
		
		";
		smalltalkClass: [  aContext methodClass ];
		doItReceiver: [ aContext receiver ];
		doItContext: [  aContext ]"